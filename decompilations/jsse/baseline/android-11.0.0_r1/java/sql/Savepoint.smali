.class public interface abstract Ljava/sql/Savepoint;
.super Ljava/lang/Object;
.source "Savepoint.java"


# virtual methods
.method public abstract whitelist core-platform-api test-api getSavepointId()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getSavepointName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
