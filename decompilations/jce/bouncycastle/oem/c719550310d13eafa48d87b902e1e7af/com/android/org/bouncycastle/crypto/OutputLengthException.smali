.class public Lcom/android/org/bouncycastle/crypto/OutputLengthException;
.super Lcom/android/org/bouncycastle/crypto/DataLengthException;
.source "OutputLengthException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
