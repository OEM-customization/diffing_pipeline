.class Ljava/util/Base64$EncOutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncOutputStream"
.end annotation


# instance fields
.field private b0:I

.field private b1:I

.field private b2:I

.field private final base64:[C

.field private closed:Z

.field private final doPadding:Z

.field private leftover:I

.field private final linemax:I

.field private linepos:I

.field private final newline:[B


# direct methods
.method constructor <init>(Ljava/io/OutputStream;[C[BIZ)V
    .registers 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "base64"    # [C
    .param p3, "newline"    # [B
    .param p4, "linemax"    # I
    .param p5, "doPadding"    # Z

    .prologue
    const/4 v0, 0x0

    .line 766
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 754
    iput v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    .line 756
    iput-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->closed:Z

    .line 762
    iput v0, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    .line 767
    iput-object p2, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    .line 768
    iput-object p3, p0, Ljava/util/Base64$EncOutputStream;->newline:[B

    .line 769
    iput p4, p0, Ljava/util/Base64$EncOutputStream;->linemax:I

    .line 770
    iput-boolean p5, p0, Ljava/util/Base64$EncOutputStream;->doPadding:Z

    .line 771
    return-void
.end method

.method private checkNewline()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 781
    iget v0, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    iget v1, p0, Ljava/util/Base64$EncOutputStream;->linemax:I

    if-ne v0, v1, :cond_10

    .line 782
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 783
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    .line 785
    :cond_10
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x3d

    .line 836
    iget-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->closed:Z

    if-nez v0, :cond_42

    .line 837
    iput-boolean v1, p0, Ljava/util/Base64$EncOutputStream;->closed:Z

    .line 838
    iget v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    if-ne v0, v1, :cond_43

    .line 839
    invoke-direct {p0}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    .line 840
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v2, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shr-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 841
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v2, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 842
    iget-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->doPadding:Z

    if-eqz v0, :cond_3a

    .line 843
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 844
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 855
    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    .line 856
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 858
    :cond_42
    return-void

    .line 846
    :cond_43
    iget v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    .line 847
    invoke-direct {p0}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    .line 848
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v2, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shr-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 849
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v2, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x3f

    iget v3, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    shr-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 850
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v2, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 851
    iget-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->doPadding:Z

    if-eqz v0, :cond_3a

    .line 852
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3a
.end method

.method public write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 775
    new-array v0, v3, [B

    .line 776
    .local v0, "buf":[B
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 777
    invoke-virtual {p0, v0, v2, v3}, Ljava/util/Base64$EncOutputStream;->write([BII)V

    .line 778
    return-void
.end method

.method public write([BII)V
    .registers 13
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 789
    iget-boolean v4, p0, Ljava/util/Base64$EncOutputStream;->closed:Z

    if-eqz v4, :cond_e

    .line 790
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Stream is closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 791
    :cond_e
    if-ltz p2, :cond_12

    if-gez p3, :cond_18

    .line 792
    :cond_12
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 791
    :cond_18
    array-length v4, p1

    sub-int/2addr v4, p2

    if-gt p3, v4, :cond_12

    .line 793
    if-nez p3, :cond_1f

    .line 794
    return-void

    .line 795
    :cond_1f
    iget v4, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    if-eqz v4, :cond_91

    .line 796
    iget v4, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    if-ne v4, v8, :cond_3b

    .line 797
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    .line 798
    add-int/lit8 p3, p3, -0x1

    .line 799
    if-nez p3, :cond_3a

    .line 800
    iget v4, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    .line 801
    return-void

    :cond_3a
    move p2, v3

    .line 804
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_3b
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .restart local v3    # "off":I
    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->b2:I

    .line 805
    add-int/lit8 p3, p3, -0x1

    .line 806
    invoke-direct {p0}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    .line 807
    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v6, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shr-int/lit8 v6, v6, 0x2

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 808
    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v6, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    iget v7, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 809
    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v6, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    iget v7, p0, Ljava/util/Base64$EncOutputStream;->b2:I

    shr-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 810
    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v6, p0, Ljava/util/Base64$EncOutputStream;->b2:I

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 811
    iget v4, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    move p2, v3

    .line 813
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_91
    div-int/lit8 v1, p3, 0x3

    .line 814
    .local v1, "nBits24":I
    mul-int/lit8 v4, v1, 0x3

    sub-int v4, p3, v4

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    move v2, v1

    .end local v1    # "nBits24":I
    .local v2, "nBits24":I
    move v3, p2

    .line 815
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_9b
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "nBits24":I
    .restart local v1    # "nBits24":I
    if-lez v2, :cond_f6

    .line 816
    invoke-direct {p0}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    .line 817
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    .line 818
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .restart local v3    # "off":I
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 817
    or-int/2addr v4, v5

    .line 819
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    .line 817
    or-int v0, v4, v5

    .line 820
    .local v0, "bits":I
    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v6, v0, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 821
    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 822
    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 823
    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    and-int/lit8 v6, v0, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 824
    iget v4, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    move v2, v1

    .end local v1    # "nBits24":I
    .restart local v2    # "nBits24":I
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_9b

    .line 826
    .end local v0    # "bits":I
    .end local v2    # "nBits24":I
    .restart local v1    # "nBits24":I
    :cond_f6
    iget v4, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    if-ne v4, v8, :cond_103

    .line 827
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    .line 832
    :goto_102
    return-void

    .line 828
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :cond_103
    iget v4, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11a

    .line 829
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    .line 830
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .restart local v3    # "off":I
    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    move p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    goto :goto_102

    .end local p2    # "off":I
    .restart local v3    # "off":I
    :cond_11a
    move p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    goto :goto_102
.end method
