# Use the official MinIO image
FROM minio/minio:latest

# Expose ports for API (9000) and Console (8080)
EXPOSE 9000 8080

# Set environment variables (override these in Render's dashboard for security)
ENV MINIO_ROOT_USER=minioadmin
ENV MINIO_ROOT_PASSWORD=minioadmin

# Persist data to a volume (Render will handle storage)
VOLUME /data

# Start MinIO server with explicit console address
CMD ["server", "/data", "--console-address", ":8080"]