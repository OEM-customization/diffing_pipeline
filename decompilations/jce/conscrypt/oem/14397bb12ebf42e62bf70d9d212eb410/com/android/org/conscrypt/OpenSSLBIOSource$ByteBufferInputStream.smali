.class Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;
.super Ljava/io/InputStream;
.source "OpenSSLBIOSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLBIOSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteBufferInputStream"
.end annotation


# instance fields
.field private final source:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "source"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 62
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0x8
    nop

    .line 63
    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@24
    nop

    move-result v0

    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@32
    nop

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@34
    nop

    move-result v0

    if-lez v0, :cond_f

    .line 68
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@52
    nop

    move-result v0

    return v0

    .line 70
    :cond_f
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@32
    nop

    move-result v0

    .line 82
    .local v0, "originalPosition":I
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1, p1}, vtable@54
    nop

    .line 83
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@32
    nop

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public read([BII)I
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@34
    nop

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 89
    .local v1, "toRead":I
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@32
    nop

    move-result v0

    .line 90
    .local v0, "originalPosition":I
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2, p1, p2, v1}, vtable@55
    nop

    .line 91
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@32
    nop

    move-result v2

    sub-int/2addr v2, v0

    return v2
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@35
    nop

    .line 97
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public skip(J)J
    .registers 8
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@32
    nop

    move-result v0

    .line 102
    .local v0, "originalPosition":I
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    int-to-long v2, v0

    add-long/2addr v2, p1

    long-to-int v2, v2

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@33
    nop

    .line 103
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@32
    nop

    move-result v1

    sub-int/2addr v1, v0

    int-to-long v2, v1

    return-wide v2
.end method
