.class public interface abstract Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;
.super Ljava/lang/Object;
.source "RSAMultiPrimePrivateCrtKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateKey;


# static fields
.field public static final whitelist core-platform-api test-api serialVersionUID:J = 0x893c8f62dbaf8a8L


# virtual methods
.method public abstract whitelist core-platform-api test-api getCrtCoefficient()Ljava/math/BigInteger;
.end method

.method public abstract whitelist core-platform-api test-api getOtherPrimeInfo()[Ljava/security/spec/RSAOtherPrimeInfo;
.end method

.method public abstract whitelist core-platform-api test-api getPrimeExponentP()Ljava/math/BigInteger;
.end method

.method public abstract whitelist core-platform-api test-api getPrimeExponentQ()Ljava/math/BigInteger;
.end method

.method public abstract whitelist core-platform-api test-api getPrimeP()Ljava/math/BigInteger;
.end method

.method public abstract whitelist core-platform-api test-api getPrimeQ()Ljava/math/BigInteger;
.end method

.method public abstract whitelist core-platform-api test-api getPublicExponent()Ljava/math/BigInteger;
.end method
