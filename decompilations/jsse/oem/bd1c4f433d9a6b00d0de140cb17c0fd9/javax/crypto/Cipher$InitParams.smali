.class Ljavax/crypto/Cipher$InitParams;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InitParams"
.end annotation


# instance fields
.field final initType:Ljavax/crypto/Cipher$InitType;

.field final key:Ljava/security/Key;

.field final opmode:I

.field final params:Ljava/security/AlgorithmParameters;

.field final random:Ljava/security/SecureRandom;

.field final spec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method constructor <init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;)V
    .registers 7
    .param p1, "initType"    # Ljavax/crypto/Cipher$InitType;
    .param p2, "opmode"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .param p5, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "params"    # Ljava/security/AlgorithmParameters;

    .prologue
    .line 2411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2413
    iput-object p1, p0, Ljavax/crypto/Cipher$InitParams;->initType:Ljavax/crypto/Cipher$InitType;

    .line 2414
    iput p2, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    .line 2415
    iput-object p3, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    .line 2416
    iput-object p4, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    .line 2417
    iput-object p5, p0, Ljavax/crypto/Cipher$InitParams;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 2418
    iput-object p6, p0, Ljavax/crypto/Cipher$InitParams;->params:Ljava/security/AlgorithmParameters;

    .line 2419
    return-void
.end method
