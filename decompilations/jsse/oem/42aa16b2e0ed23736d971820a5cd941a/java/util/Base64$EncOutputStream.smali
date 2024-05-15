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
.field private greylist-max-o b0:I

.field private greylist-max-o b1:I

.field private greylist-max-o b2:I

.field private final greylist-max-o base64:[C

.field private greylist-max-o closed:Z

.field private final greylist-max-o doPadding:Z

.field private greylist-max-o leftover:I

.field private final greylist-max-o linemax:I

.field private greylist-max-o linepos:I

.field private final greylist-max-o newline:[B


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/OutputStream;[C[BIZ)V
    .registers 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "base64"    # [C
    .param p3, "newline"    # [B
    .param p4, "linemax"    # I
    .param p5, "doPadding"    # Z

    .line 766
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 754
    const/4 v0, 0x0

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

.method private greylist-max-o checkNewline()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
.method public whitelist core-platform-api test-api close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    iget-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->closed:Z

    if-nez v0, :cond_81

    .line 840
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->closed:Z

    .line 841
    iget v1, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    const/16 v2, 0x3d

    const/4 v3, 0x2

    if-ne v1, v0, :cond_3c

    .line 842
    invoke-direct {p0}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    .line 843
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shr-int/lit8 v3, v4, 0x2

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 844
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v3, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 845
    iget-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->doPadding:Z

    if-eqz v0, :cond_79

    .line 846
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 847
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_79

    .line 849
    :cond_3c
    if-ne v1, v3, :cond_79

    .line 850
    invoke-direct {p0}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    .line 851
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shr-int/2addr v4, v3

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 852
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    iget v5, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 853
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    shl-int/lit8 v3, v4, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 854
    iget-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->doPadding:Z

    if-eqz v0, :cond_79

    .line 855
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 858
    :cond_79
    :goto_79
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    .line 859
    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 861
    :cond_81
    return-void
.end method

.method public whitelist core-platform-api test-api write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 775
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 776
    .local v1, "buf":[B
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 777
    invoke-virtual {p0, v1, v3, v0}, Ljava/util/Base64$EncOutputStream;->write([BII)V

    .line 778
    return-void
.end method

.method public whitelist core-platform-api test-api write([BII)V
    .registers 11
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 789
    iget-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->closed:Z

    if-nez v0, :cond_105

    .line 794
    if-ltz p2, :cond_ff

    if-ltz p3, :cond_ff

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_ff

    .line 796
    if-nez p3, :cond_f

    .line 797
    return-void

    .line 798
    :cond_f
    iget v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_7c

    .line 799
    if-ne v0, v2, :cond_28

    .line 800
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    .line 801
    add-int/lit8 p3, p3, -0x1

    .line 802
    if-nez p3, :cond_27

    .line 803
    add-int/2addr v0, v2

    iput v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    .line 804
    return-void

    .line 802
    :cond_27
    move p2, v3

    .line 807
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_28
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Ljava/util/Base64$EncOutputStream;->b2:I

    .line 808
    add-int/lit8 p3, p3, -0x1

    .line 809
    invoke-direct {p0}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    .line 810
    iget-object p2, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shr-int/2addr v4, v1

    aget-char v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 811
    iget-object p2, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    iget v5, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    aget-char v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 812
    iget-object p2, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    shl-int/2addr v4, v1

    and-int/lit8 v4, v4, 0x3f

    iget v5, p0, Ljava/util/Base64$EncOutputStream;->b2:I

    shr-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    aget-char v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 813
    iget-object p2, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->b2:I

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 814
    iget p2, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    move p2, v0

    .line 816
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_7c
    div-int/lit8 v0, p3, 0x3

    .line 817
    .local v0, "nBits24":I
    mul-int/lit8 v3, v0, 0x3

    sub-int v3, p3, v3

    iput v3, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    .line 818
    :goto_84
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "nBits24":I
    .local v3, "nBits24":I
    if-lez v0, :cond_de

    .line 819
    invoke-direct {p0}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    .line 820
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "off":I
    .local v4, "off":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 v0, v4, 0x1

    .end local v4    # "off":I
    .restart local v0    # "off":I
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr p2, v4

    .line 823
    .local p2, "bits":I
    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v6, p2, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 824
    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v6, p2, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 825
    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v6, p2, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 826
    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    and-int/lit8 v6, p2, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 827
    iget v4, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    .line 828
    .end local p2    # "bits":I
    move p2, v0

    move v0, v3

    goto :goto_84

    .line 829
    .end local v0    # "off":I
    .local p2, "off":I
    :cond_de
    iget v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    if-ne v0, v2, :cond_ec

    .line 830
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    move p2, v0

    goto :goto_fe

    .line 831
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_ec
    if-ne v0, v1, :cond_fe

    .line 832
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    .line 833
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "off":I
    .restart local p2    # "off":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    .line 835
    :cond_fe
    :goto_fe
    return-void

    .line 795
    .end local v3    # "nBits24":I
    :cond_ff
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 790
    :cond_105
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
