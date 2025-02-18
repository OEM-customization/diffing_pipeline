.class public interface abstract Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;
.super Ljava/lang/Object;
.source "ConfigurableProvider.java"


# static fields
.field public static final blacklist core-platform-api ACCEPTABLE_EC_CURVES:Ljava/lang/String; = "acceptableEcCurves"

.field public static final blacklist core-platform-api ADDITIONAL_EC_PARAMETERS:Ljava/lang/String; = "additionalEcParameters"

.field public static final blacklist core-platform-api DH_DEFAULT_PARAMS:Ljava/lang/String; = "DhDefaultParams"

.field public static final blacklist core-platform-api EC_IMPLICITLY_CA:Ljava/lang/String; = "ecImplicitlyCa"

.field public static final blacklist core-platform-api THREAD_LOCAL_DH_DEFAULT_PARAMS:Ljava/lang/String; = "threadLocalDhDefaultParams"

.field public static final blacklist core-platform-api THREAD_LOCAL_EC_IMPLICITLY_CA:Ljava/lang/String; = "threadLocalEcImplicitlyCa"


# virtual methods
.method public abstract blacklist addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
.end method

.method public abstract blacklist addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist addAttributes(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist addKeyInfoConverter(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V
.end method

.method public abstract blacklist hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract blacklist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
.end method
