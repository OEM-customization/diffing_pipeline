.class final Ljava/nio/DirectByteBuffer$MemoryRef;
.super Ljava/lang/Object;
.source "DirectByteBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/DirectByteBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MemoryRef"
.end annotation


# instance fields
.field allocatedAddress:J

.field buffer:[B

.field isAccessible:Z

.field isFreed:Z

.field final offset:I

.field final originalBufferObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .registers 8
    .param p1, "capacity"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 71
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    add-int/lit8 v2, p1, 0x7

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    .line 72
    iget-object v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    .line 74
    iget-wide v2, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    const-wide/16 v4, 0x7

    add-long/2addr v2, v4

    const-wide/16 v4, -0x8

    and-long/2addr v2, v4

    iget-wide v4, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->originalBufferObject:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method constructor <init>(JLjava/lang/Object;)V
    .registers 5
    .param p1, "allocatedAddress"    # J
    .param p3, "originalBufferObject"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    .line 82
    iput-wide p1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    .line 84
    iput-object p3, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->originalBufferObject:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    .line 86
    return-void
.end method


# virtual methods
.method free()V
    .registers 3

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    .line 93
    return-void
.end method
