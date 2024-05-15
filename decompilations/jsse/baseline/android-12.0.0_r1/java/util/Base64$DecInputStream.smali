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
.field private final greylist-max-o base64:[I

.field private greylist-max-o bits:I

.field private greylist-max-o closed:Z

.field private greylist-max-o eof:Z

.field private final greylist-max-o is:Ljava/io/InputStream;

.field private final greylist-max-o isMIME:Z

.field private greylist-max-o nextin:I

.field private greylist-max-o nextout:I

.field private greylist-max-o sbBuf:[B


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/InputStream;[IZ)V
    .registers 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "base64"    # [I
    .param p3, "isMIME"    # Z

    .line 880
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 872
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Base64$DecInputStream;->bits:I

    .line 873
    const/16 v1, 0x12

    iput v1, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    .line 875
    const/4 v1, -0x8

    iput v1, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    .line 877
    iput-boolean v0, p0, Ljava/util/Base64$DecInputStream;->eof:Z

    .line 878
    iput-boolean v0, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    .line 886
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/Base64$DecInputStream;->sbBuf:[B

    .line 881
    iput-object p1, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    .line 882
    iput-object p2, p0, Ljava/util/Base64$DecInputStream;->base64:[I

    .line 883
    iput-boolean p3, p0, Ljava/util/Base64$DecInputStream;->isMIME:Z

    .line 884
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 988
    iget-boolean v0, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_b

    .line 990
    iget-object v0, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    .line 989
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 995
    iget-boolean v0, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_c

    .line 996
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    .line 997
    iget-object v0, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 999
    :cond_c
    return-void
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 890
    iget-object v0, p0, Ljava/util/Base64$DecInputStream;->sbBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Base64$DecInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    goto :goto_12

    :cond_c
    iget-object v0, p0, Ljava/util/Base64$DecInputStream;->sbBuf:[B

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    :goto_12
    return v2
.end method

.method public whitelist test-api read([BII)I
    .registers 13
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    iget-boolean v0, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_137

    .line 897
    iget-boolean v0, p0, Ljava/util/Base64$DecInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_e

    iget v0, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    if-gez v0, :cond_e

    .line 898
    return v1

    .line 899
    :cond_e
    if-ltz p2, :cond_131

    if-ltz p3, :cond_131

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_131

    .line 901
    move v0, p2

    .line 902
    .local v0, "oldOff":I
    iget v2, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    const/4 v3, 0x0

    if-ltz v2, :cond_39

    .line 904
    :goto_1c
    if-nez p3, :cond_21

    .line 905
    sub-int v1, p2, v0

    return v1

    .line 906
    :cond_21
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    iget v4, p0, Ljava/util/Base64$DecInputStream;->bits:I

    iget v5, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 907
    add-int/lit8 p3, p3, -0x1

    .line 908
    add-int/lit8 v5, v5, -0x8

    iput v5, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    .line 909
    if-gez v5, :cond_37

    .line 910
    iput v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    move p2, v2

    goto :goto_39

    .line 909
    :cond_37
    move p2, v2

    goto :goto_1c

    .line 912
    .end local v2    # "off":I
    .restart local p2    # "off":I
    :cond_39
    :goto_39
    if-lez p3, :cond_12e

    .line 913
    iget-object v2, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 914
    .local v2, "v":I
    const/16 v4, 0xc

    const/16 v5, 0x12

    const/4 v6, 0x1

    if-ne v2, v1, :cond_7e

    .line 915
    iput-boolean v6, p0, Ljava/util/Base64$DecInputStream;->eof:Z

    .line 916
    iget v6, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-eq v6, v5, :cond_78

    .line 917
    if-eq v6, v4, :cond_70

    .line 921
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "off":I
    .local v4, "off":I
    iget v5, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 922
    add-int/lit8 p3, p3, -0x1

    .line 923
    if-nez v6, :cond_6e

    .line 924
    if-nez p3, :cond_66

    .line 925
    shr-int/lit8 p2, v5, 0x8

    iput p2, p0, Ljava/util/Base64$DecInputStream;->bits:I

    .line 926
    iput v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    goto :goto_6e

    .line 928
    :cond_66
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v3, v5, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    goto :goto_78

    .line 932
    .end local p2    # "off":I
    .restart local v4    # "off":I
    :cond_6e
    :goto_6e
    move p2, v4

    goto :goto_78

    .line 918
    .end local v4    # "off":I
    .restart local p2    # "off":I
    :cond_70
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Base64 stream has one un-decoded dangling byte."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 932
    :cond_78
    :goto_78
    if-ne p2, v0, :cond_7b

    .line 933
    return v1

    .line 935
    :cond_7b
    sub-int v1, p2, v0

    return v1

    .line 937
    :cond_7e
    const/16 v7, 0x3d

    if-ne v2, v7, :cond_d1

    .line 942
    iget v1, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-eq v1, v5, :cond_b8

    if-eq v1, v4, :cond_b8

    const/4 v4, 0x6

    if-ne v1, v4, :cond_93

    iget-object v1, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    .line 943
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v7, :cond_b8

    .line 946
    :cond_93
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget v4, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 947
    add-int/lit8 p3, p3, -0x1

    .line 948
    iget p2, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-nez p2, :cond_b3

    .line 949
    if-nez p3, :cond_ab

    .line 950
    shr-int/lit8 p2, v4, 0x8

    iput p2, p0, Ljava/util/Base64$DecInputStream;->bits:I

    .line 951
    iput v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    goto :goto_b3

    .line 953
    :cond_ab
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v3, v4, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    goto :goto_b4

    .line 956
    .end local p2    # "off":I
    .restart local v1    # "off":I
    :cond_b3
    :goto_b3
    move p2, v1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    :goto_b4
    iput-boolean v6, p0, Ljava/util/Base64$DecInputStream;->eof:Z

    .line 957
    goto/16 :goto_12e

    .line 944
    :cond_b8
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal base64 ending sequence:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 959
    :cond_d1
    iget-object v4, p0, Ljava/util/Base64$DecInputStream;->base64:[I

    aget v4, v4, v2

    move v2, v4

    const/16 v6, 0x10

    if-ne v4, v1, :cond_fb

    .line 960
    iget-boolean v4, p0, Ljava/util/Base64$DecInputStream;->isMIME:Z

    if-eqz v4, :cond_e0

    .line 961
    goto/16 :goto_39

    .line 963
    :cond_e0
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal base64 character "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-static {v2, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 966
    :cond_fb
    iget v4, p0, Ljava/util/Base64$DecInputStream;->bits:I

    iget v7, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    shl-int v8, v2, v7

    or-int/2addr v4, v8

    iput v4, p0, Ljava/util/Base64$DecInputStream;->bits:I

    .line 967
    if-nez v7, :cond_128

    .line 968
    iput v5, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    .line 969
    iput v6, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    .line 970
    :goto_10a
    iget v4, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    if-ltz v4, :cond_125

    .line 971
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "off":I
    .local v5, "off":I
    iget v6, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 972
    add-int/lit8 p3, p3, -0x1

    .line 973
    add-int/lit8 v4, v4, -0x8

    iput v4, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    .line 974
    if-nez p3, :cond_123

    if-ltz v4, :cond_123

    .line 975
    sub-int p2, v5, v0

    return p2

    .line 970
    :cond_123
    move p2, v5

    goto :goto_10a

    .line 978
    .end local v5    # "off":I
    .restart local p2    # "off":I
    :cond_125
    iput v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    goto :goto_12c

    .line 980
    :cond_128
    add-int/lit8 v7, v7, -0x6

    iput v7, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    .line 982
    .end local v2    # "v":I
    :goto_12c
    goto/16 :goto_39

    .line 983
    :cond_12e
    :goto_12e
    sub-int v1, p2, v0

    return v1

    .line 900
    .end local v0    # "oldOff":I
    :cond_131
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 896
    :cond_137
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
