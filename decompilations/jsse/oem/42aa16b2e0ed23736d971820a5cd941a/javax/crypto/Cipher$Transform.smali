.class Ljavax/crypto/Cipher$Transform;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Transform"
.end annotation


# instance fields
.field private final greylist-max-o name:Ljava/lang/String;

.field private final greylist-max-o needToSet:Ljavax/crypto/Cipher$NeedToSet;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "needToSet"    # Ljavax/crypto/Cipher$NeedToSet;

    .line 2710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2711
    iput-object p1, p0, Ljavax/crypto/Cipher$Transform;->name:Ljava/lang/String;

    .line 2712
    iput-object p2, p0, Ljavax/crypto/Cipher$Transform;->needToSet:Ljavax/crypto/Cipher$NeedToSet;

    .line 2713
    return-void
.end method

.method static synthetic blacklist access$300(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljavax/crypto/Cipher$Transform;

    .line 2706
    iget-object v0, p0, Ljavax/crypto/Cipher$Transform;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$400(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;
    .registers 2
    .param p0, "x0"    # Ljavax/crypto/Cipher$Transform;

    .line 2706
    iget-object v0, p0, Ljavax/crypto/Cipher$Transform;->needToSet:Ljavax/crypto/Cipher$NeedToSet;

    return-object v0
.end method
