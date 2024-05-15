.class final Ljavax/crypto/JceSecurityManager;
.super Ljava/lang/SecurityManager;
.source "JceSecurityManager.java"


# static fields
.field static final INSTANCE:Ljavax/crypto/JceSecurityManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/SecurityManager;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method getCryptoPermission(Ljava/lang/String;)Ljavax/crypto/CryptoPermission;
    .registers 3
    .param p1, "alg"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method
