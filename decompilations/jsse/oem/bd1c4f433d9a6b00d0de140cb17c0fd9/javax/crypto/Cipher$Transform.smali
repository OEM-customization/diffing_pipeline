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
.field private final name:Ljava/lang/String;

.field private final needToSet:Ljavax/crypto/Cipher$NeedToSet;


# direct methods
.method static synthetic -get0(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljavax/crypto/Cipher$Transform;

    .prologue
    iget-object v0, p0, Ljavax/crypto/Cipher$Transform;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;
    .registers 2
    .param p0, "-this"    # Ljavax/crypto/Cipher$Transform;

    .prologue
    iget-object v0, p0, Ljavax/crypto/Cipher$Transform;->needToSet:Ljavax/crypto/Cipher$NeedToSet;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "needToSet"    # Ljavax/crypto/Cipher$NeedToSet;

    .prologue
    .line 2394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2395
    iput-object p1, p0, Ljavax/crypto/Cipher$Transform;->name:Ljava/lang/String;

    .line 2396
    iput-object p2, p0, Ljavax/crypto/Cipher$Transform;->needToSet:Ljavax/crypto/Cipher$NeedToSet;

    .line 2397
    return-void
.end method
