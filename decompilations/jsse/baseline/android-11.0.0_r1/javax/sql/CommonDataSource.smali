.class public interface abstract Ljavax/sql/CommonDataSource;
.super Ljava/lang/Object;
.source "CommonDataSource.java"


# virtual methods
.method public abstract whitelist core-platform-api test-api getLogWriter()Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getLoginTimeout()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getParentLogger()Ljava/util/logging/Logger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLFeatureNotSupportedException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api setLogWriter(Ljava/io/PrintWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api setLoginTimeout(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
