.class final Lcom/android/org/conscrypt/AllocatedBuffer$1;
.super Lcom/android/org/conscrypt/AllocatedBuffer;
.source "AllocatedBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/org/conscrypt/AllocatedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/org/conscrypt/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    .line 68
    invoke-direct {p0}, Lcom/android/org/conscrypt/AllocatedBuffer;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public nioBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/org/conscrypt/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public release()Lcom/android/org/conscrypt/AllocatedBuffer;
    .registers 1

    .prologue
    .line 84
    return-object p0
.end method

.method public retain()Lcom/android/org/conscrypt/AllocatedBuffer;
    .registers 1

    .prologue
    .line 78
    return-object p0
.end method
