.class Ljava/util/Base64$DecInputStream;
.super Ljava/io/InputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecInputStream"
.end annotation


# instance fields
.field private final base64:[I

.field private bits:I

.field private closed:Z

.field private eof:Z

.field private final is:Ljava/io/InputStream;

.field private final isMIME:Z

.field private nextin:I

.field private nextout:I

.field private sbBuf:[B


# direct methods
.method constructor <init>(Ljava/io/InputStream;[IZ)V
    .registers 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "base64"    # [I
    .param p3, "isMIME"    # Z

    .prologue
    const/4 v1, 0x0

    .line 877
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 869
    iput v1, p0, Ljava/util/Base64$DecInputStream;->bits:I

    .line 870
    const/16 v0, 0x12

    iput v0, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    .line 872
    const/4 v0, -0x8

    iput v0, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    .line 874
    iput-boolean v1, p0, Ljava/util/Base64$DecInputStream;->eof:Z

    .line 875
    iput-boolean v1, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    .line 883
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/Base64$DecInputStream;->sbBuf:[B

    .line 878
    iput-object p1, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    .line 879
    iput-object p2, p0, Ljava/util/Base64$DecInputStream;->base64:[I

    .line 880
    iput-boolean p3, p0, Ljava/util/Base64$DecInputStream;->isMIME:Z

    .line 881
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
    .line 985
    iget-boolean v0, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    if-eqz v0, :cond_d

    .line 986
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    :cond_d
    iget-object v0, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 992
    iget-boolean v0, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_c

    .line 993
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    .line 994
    iget-object v0, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 996
    :cond_c
    return-void
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 887
    iget-object v1, p0, Ljava/util/Base64$DecInputStream;->sbBuf:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Ljava/util/Base64$DecInputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Ljava/util/Base64$DecInputStream;->sbBuf:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_b
.end method

.method public read([BII)I
    .registers 14
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x1

    const/16 v7, 0x12

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 892
    iget-boolean v3, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    if-eqz v3, :cond_14

    .line 893
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Stream is closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 894
    :cond_14
    iget-boolean v3, p0, Ljava/util/Base64$DecInputStream;->eof:Z

    if-eqz v3, :cond_1d

    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    if-gez v3, :cond_1d

    .line 895
    return v6

    .line 896
    :cond_1d
    if-ltz p2, :cond_21

    if-gez p3, :cond_27

    .line 897
    :cond_21
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 896
    :cond_27
    array-length v3, p1

    sub-int/2addr v3, p2

    if-gt p3, v3, :cond_21

    .line 898
    move v1, p2

    .line 899
    .local v1, "oldOff":I
    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    if-ltz v3, :cond_157

    :cond_30
    move v0, p2

    .line 901
    .end local p2    # "off":I
    .local v0, "off":I
    if-nez p3, :cond_36

    .line 902
    sub-int v3, v0, v1

    return v3

    .line 903
    :cond_36
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "off":I
    .restart local p2    # "off":I
    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    iget v4, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    shr-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 904
    add-int/lit8 p3, p3, -0x1

    .line 905
    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    add-int/lit8 v3, v3, -0x8

    iput v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    .line 906
    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    if-gez v3, :cond_30

    .line 907
    iput v5, p0, Ljava/util/Base64$DecInputStream;->bits:I

    move v0, p2

    .line 909
    .end local p2    # "off":I
    .restart local v0    # "off":I
    :cond_4f
    :goto_4f
    if-lez p3, :cond_165

    .line 910
    iget-object v3, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 911
    .local v2, "v":I
    if-ne v2, v6, :cond_96

    .line 912
    iput-boolean v8, p0, Ljava/util/Base64$DecInputStream;->eof:Z

    .line 913
    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-eq v3, v7, :cond_162

    .line 914
    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-ne v3, v9, :cond_6c

    .line 915
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Base64 stream has one un-decoded dangling byte."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 918
    :cond_6c
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "off":I
    .restart local p2    # "off":I
    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 919
    add-int/lit8 p3, p3, -0x1

    .line 920
    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-nez v3, :cond_85

    .line 921
    if-nez p3, :cond_88

    .line 922
    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v3, v3, 0x8

    iput v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    .line 923
    iput v5, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    .line 929
    :cond_85
    :goto_85
    if-ne p2, v1, :cond_93

    .line 930
    return v6

    .line 925
    :cond_88
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    move p2, v0

    .end local v0    # "off":I
    .restart local p2    # "off":I
    goto :goto_85

    .line 932
    :cond_93
    sub-int v3, p2, v1

    return v3

    .line 934
    .end local p2    # "off":I
    .restart local v0    # "off":I
    :cond_96
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_f6

    .line 939
    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-eq v3, v7, :cond_a2

    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-ne v3, v9, :cond_be

    .line 941
    :cond_a2
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Illegal base64 ending sequence:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 940
    :cond_be
    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_cd

    iget-object v3, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_a2

    .line 943
    :cond_cd
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "off":I
    .restart local p2    # "off":I
    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 944
    add-int/lit8 p3, p3, -0x1

    .line 945
    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-nez v3, :cond_e6

    .line 946
    if-nez p3, :cond_eb

    .line 947
    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v3, v3, 0x8

    iput v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    .line 948
    iput v5, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    .line 953
    :cond_e6
    :goto_e6
    iput-boolean v8, p0, Ljava/util/Base64$DecInputStream;->eof:Z

    .line 980
    .end local v2    # "v":I
    :goto_e8
    sub-int v3, p2, v1

    return v3

    .line 950
    .restart local v2    # "v":I
    :cond_eb
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    move p2, v0

    .end local v0    # "off":I
    .restart local p2    # "off":I
    goto :goto_e6

    .line 956
    .end local p2    # "off":I
    .restart local v0    # "off":I
    :cond_f6
    iget-object v3, p0, Ljava/util/Base64$DecInputStream;->base64:[I

    aget v2, v3, v2

    if-ne v2, v6, :cond_120

    .line 957
    iget-boolean v3, p0, Ljava/util/Base64$DecInputStream;->isMIME:Z

    if-nez v3, :cond_4f

    .line 960
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Illegal base64 character "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 961
    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 960
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 963
    :cond_120
    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    iget v4, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    shl-int v4, v2, v4

    or-int/2addr v3, v4

    iput v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    .line 964
    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-nez v3, :cond_15a

    .line 965
    iput v7, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    .line 966
    const/16 v3, 0x10

    iput v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    move p2, v0

    .line 967
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :goto_134
    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    if-ltz v3, :cond_155

    .line 968
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    iget v4, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    shr-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 969
    add-int/lit8 p3, p3, -0x1

    .line 970
    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    add-int/lit8 v3, v3, -0x8

    iput v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    .line 971
    if-nez p3, :cond_153

    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    if-ltz v3, :cond_153

    .line 972
    sub-int v3, v0, v1

    return v3

    :cond_153
    move p2, v0

    .end local v0    # "off":I
    .restart local p2    # "off":I
    goto :goto_134

    .line 975
    :cond_155
    iput v5, p0, Ljava/util/Base64$DecInputStream;->bits:I

    .end local v2    # "v":I
    :cond_157
    :goto_157
    move v0, p2

    .end local p2    # "off":I
    .restart local v0    # "off":I
    goto/16 :goto_4f

    .line 977
    .restart local v2    # "v":I
    :cond_15a
    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    add-int/lit8 v3, v3, -0x6

    iput v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    move p2, v0

    .end local v0    # "off":I
    .restart local p2    # "off":I
    goto :goto_157

    .end local p2    # "off":I
    .restart local v0    # "off":I
    :cond_162
    move p2, v0

    .end local v0    # "off":I
    .restart local p2    # "off":I
    goto/16 :goto_85

    .end local v2    # "v":I
    .end local p2    # "off":I
    .restart local v0    # "off":I
    :cond_165
    move p2, v0

    .end local v0    # "off":I
    .restart local p2    # "off":I
    goto :goto_e8
.end method
