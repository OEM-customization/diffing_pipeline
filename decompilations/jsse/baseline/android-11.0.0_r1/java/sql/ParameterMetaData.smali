.class public interface abstract Ljava/sql/ParameterMetaData;
.super Ljava/lang/Object;
.source "ParameterMetaData.java"

# interfaces
.implements Ljava/sql/Wrapper;


# static fields
.field public static final whitelist core-platform-api test-api parameterModeIn:I = 0x1

.field public static final whitelist core-platform-api test-api parameterModeInOut:I = 0x2

.field public static final whitelist core-platform-api test-api parameterModeOut:I = 0x4

.field public static final whitelist core-platform-api test-api parameterModeUnknown:I = 0x0

.field public static final whitelist core-platform-api test-api parameterNoNulls:I = 0x0

.field public static final whitelist core-platform-api test-api parameterNullable:I = 0x1

.field public static final whitelist core-platform-api test-api parameterNullableUnknown:I = 0x2


# virtual methods
.method public abstract whitelist core-platform-api test-api getParameterClassName(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getParameterCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getParameterMode(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getParameterType(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getParameterTypeName(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getPrecision(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getScale(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api isNullable(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api isSigned(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
