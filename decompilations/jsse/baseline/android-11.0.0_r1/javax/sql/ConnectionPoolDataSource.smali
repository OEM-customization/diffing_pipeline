.class public interface abstract Ljavax/sql/ConnectionPoolDataSource;
.super Ljava/lang/Object;
.source "ConnectionPoolDataSource.java"

# interfaces
.implements Ljavax/sql/CommonDataSource;


# virtual methods
.method public abstract whitelist core-platform-api test-api getPooledConnection()Ljavax/sql/PooledConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getPooledConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/sql/PooledConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
