.class final Ljavax/crypto/CryptoAllPermission;
.super Ljavax/crypto/CryptoPermission;
.source "CryptoAllPermission.java"


# static fields
.field static final ALG_NAME:Ljava/lang/String;

.field static final INSTANCE:Ljavax/crypto/CryptoAllPermission;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 39
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Ljavax/crypto/CryptoPermission;-><init>(Ljava/lang/String;)V

    return-void
.end method
