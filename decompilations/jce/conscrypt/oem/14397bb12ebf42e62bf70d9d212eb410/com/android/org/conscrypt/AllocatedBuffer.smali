.class public abstract Lcom/android/org/conscrypt/AllocatedBuffer;
.super Ljava/lang/Object;
.source "AllocatedBuffer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static wrap(Ljava/nio/ByteBuffer;)Lcom/android/org/conscrypt/AllocatedBuffer;
    .registers 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 66
    const-string/jumbo v0, "buffer"

    invoke-static {p0, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    new-instance v0, Lcom/android/org/conscrypt/AllocatedBuffer$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AllocatedBuffer$1;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public abstract nioBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract release()Lcom/android/org/conscrypt/AllocatedBuffer;
.end method

.method public abstract retain()Lcom/android/org/conscrypt/AllocatedBuffer;
.end method
