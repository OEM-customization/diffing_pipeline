.class Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$InvalidKeyOrParametersException;
.super Ljava/security/InvalidKeyException;
.source "BaseBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvalidKeyOrParametersException"
.end annotation


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1430
    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 1431
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$InvalidKeyOrParametersException;->cause:Ljava/lang/Throwable;

    .line 1432
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$InvalidKeyOrParametersException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
