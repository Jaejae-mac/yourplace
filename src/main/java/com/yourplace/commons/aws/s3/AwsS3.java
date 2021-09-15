package com.yourplace.commons.aws.s3;

import java.io.File;
import java.io.InputStream;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.SdkClientException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CopyObjectRequest;
import com.amazonaws.services.s3.model.DeleteObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;

public class AwsS3 {
	private AmazonS3 s3Client;
	final private String accessKey = "AKIAWXTSCXUI3B4WERAW";
	final private String secretKey = "OyiO5tr0MAb26dp1NLB3xwznt8la5jkF0YeJ7fqW";
	private Regions clientRegion = Regions.AP_NORTHEAST_2;
	private String bucket = "yourplacebuc";

	private AwsS3() {
		createS3Client();
	}

	// construct singleton pattern
	static private AwsS3 instance = null;

	public static AwsS3 getInstance() {
		if (instance == null) {
			return new AwsS3();
		} else {
			return instance;
		}
	}

	// create S3 Client
	private void createS3Client() {
		AWSCredentials credentials = new BasicAWSCredentials(accessKey, secretKey);
		this.s3Client = AmazonS3ClientBuilder.standard().withCredentials(new AWSStaticCredentialsProvider(credentials))
				.withRegion(clientRegion).build();
	}

	// 업로드 메서드.
	public void upload(File file, String key) {
		uploadToS3(new PutObjectRequest(this.bucket, key, file));
	}

	// For MultipartFile
	public void upload(InputStream is, String key, String contentType, long contentLength) {
		ObjectMetadata objectMetadata = new ObjectMetadata();
		objectMetadata.setContentType(contentType);
		objectMetadata.setContentLength(contentLength);
		uploadToS3(new PutObjectRequest(this.bucket, key, is, objectMetadata));
	}

	// PutObjectRequest 는 AWS S3 버킷에 업로드할 객체 메타 데이터와 파일 데이터로 이루어져 있다.
	private void uploadToS3(PutObjectRequest putObjectRequest) {
		try {
			this.s3Client.putObject(putObjectRequest);
			System.out.println(String.format("[%s] upload complete", putObjectRequest.getKey()));
		} catch (AmazonServiceException e) {
			e.printStackTrace();
		} catch (SdkClientException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 복사 메서드
	public void copy(String orgKey, String copyKey) {
		try {
			// copy 객체 생성.
			CopyObjectRequest copyObjectRequest = new CopyObjectRequest(this.bucket, orgKey, this.bucket, copyKey);
			// copy
			this.s3Client.copyObject(copyObjectRequest);

			System.out.println(String.format("Finish copying [%s] to [%s]", orgKey, copyKey));
		} catch (AmazonServiceException e) {
			e.printStackTrace();
		} catch (SdkClientException e) {
			e.printStackTrace();
		}
	}

	// 삭제 메서드
	public void delete(String key) {
		try {
			// Delete 객체 생성.
			DeleteObjectRequest deleteObjectRequest = new DeleteObjectRequest(this.bucket, key);
			// 삭제.
			this.s3Client.deleteObject(deleteObjectRequest);

			System.out.println(String.format("[%s3] deletion complete", key));

		} catch (AmazonServiceException e) {
			e.printStackTrace();
		}catch (SdkClientException e) {
			e.printStackTrace();
		}
	}

}
