.class public abstract Ljavax/crypto/CipherSpi;
.super Ljava/lang/Object;
.source "CipherSpi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bufferCrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I
    .registers 29
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .param p3, "isUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 747
    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    .line 748
    :cond_4
    new-instance v2, Ljava/lang/NullPointerException;

    .line 749
    const-string/jumbo v8, "Input and output buffers must not be null"

    .line 748
    invoke-direct {v2, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 751
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v18

    .line 752
    .local v18, "inPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v17

    .line 753
    .local v17, "inLimit":I
    sub-int v5, v17, v18

    .line 754
    .local v5, "inLen":I
    if-eqz p3, :cond_1d

    if-nez v5, :cond_1d

    .line 755
    const/4 v2, 0x0

    return v2

    .line 757
    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v20

    .line 758
    .local v20, "outLenNeeded":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    move/from16 v0, v20

    if-ge v2, v0, :cond_4e

    .line 759
    new-instance v2, Ljavax/crypto/ShortBufferException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Need at least "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 760
    const-string/jumbo v9, " bytes of space in output buffer"

    .line 759
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 763
    :cond_4e
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v14

    .line 764
    .local v14, "a1":Z
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v15

    .line 766
    .local v15, "a2":Z
    if-eqz v14, :cond_90

    if-eqz v15, :cond_90

    .line 767
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 768
    .local v3, "inArray":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v4, v2, v18

    .line 769
    .local v4, "inOfs":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 770
    .local v6, "outArray":[B
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v21

    .line 771
    .local v21, "outPos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v7, v2, v21

    .line 773
    .local v7, "outOfs":I
    if-eqz p3, :cond_89

    move-object/from16 v2, p0

    .line 774
    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v19

    .line 778
    .local v19, "n":I
    :goto_7a
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 779
    add-int v2, v21, v19

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 780
    return v19

    .end local v19    # "n":I
    :cond_89
    move-object/from16 v2, p0

    .line 776
    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v19

    .restart local v19    # "n":I
    goto :goto_7a

    .line 781
    .end local v3    # "inArray":[B
    .end local v4    # "inOfs":I
    .end local v6    # "outArray":[B
    .end local v7    # "outOfs":I
    .end local v19    # "n":I
    .end local v21    # "outPos":I
    :cond_90
    if-nez v14, :cond_df

    if-eqz v15, :cond_df

    .line 782
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v21

    .line 783
    .restart local v21    # "outPos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 784
    .restart local v6    # "outArray":[B
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v7, v2, v21

    .line 785
    .restart local v7    # "outOfs":I
    invoke-static {v5}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v2

    new-array v3, v2, [B

    .line 786
    .restart local v3    # "inArray":[B
    const/16 v24, 0x0

    .line 788
    .local v24, "total":I
    :cond_aa
    array-length v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 789
    .local v11, "chunk":I
    if-lez v11, :cond_b7

    .line 790
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 793
    :cond_b7
    if-nez p3, :cond_bb

    if-eq v5, v11, :cond_d4

    .line 794
    :cond_bb
    const/4 v10, 0x0

    move-object/from16 v8, p0

    move-object v9, v3

    move-object v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v19

    .line 798
    .restart local v19    # "n":I
    :goto_c5
    add-int v24, v24, v19

    .line 799
    add-int v7, v7, v19

    .line 800
    sub-int/2addr v5, v11

    .line 801
    if-gtz v5, :cond_aa

    .line 802
    add-int v2, v21, v24

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 803
    return v24

    .line 796
    .end local v19    # "n":I
    :cond_d4
    const/4 v10, 0x0

    move-object/from16 v8, p0

    move-object v9, v3

    move-object v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v19

    .restart local v19    # "n":I
    goto :goto_c5

    .line 807
    .end local v3    # "inArray":[B
    .end local v6    # "outArray":[B
    .end local v7    # "outOfs":I
    .end local v11    # "chunk":I
    .end local v19    # "n":I
    .end local v21    # "outPos":I
    .end local v24    # "total":I
    :cond_df
    if-eqz v14, :cond_138

    .line 808
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 809
    .restart local v3    # "inArray":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v4, v2, v18

    .line 814
    .restart local v4    # "inOfs":I
    :goto_eb
    invoke-static/range {v20 .. v20}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v2

    new-array v6, v2, [B

    .line 815
    .restart local v6    # "outArray":[B
    array-length v0, v6

    move/from16 v22, v0

    .line 816
    .local v22, "outSize":I
    const/16 v24, 0x0

    .line 817
    .restart local v24    # "total":I
    const/16 v23, 0x0

    .line 820
    .local v23, "resized":Z
    :cond_f8
    if-nez v22, :cond_140

    array-length v2, v3

    :goto_fb
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 821
    .restart local v11    # "chunk":I
    if-nez v14, :cond_10e

    xor-int/lit8 v2, v23, 0x1

    if-eqz v2, :cond_10e

    if-lez v11, :cond_10e

    .line 822
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 823
    const/4 v4, 0x0

    .line 827
    :cond_10e
    if-nez p3, :cond_112

    if-eq v5, v11, :cond_143

    .line 828
    :cond_112
    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v3

    move v10, v4

    move-object v12, v6

    :try_start_118
    invoke-virtual/range {v8 .. v13}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v19

    .line 832
    .restart local v19    # "n":I
    :goto_11c
    const/16 v23, 0x0

    .line 833
    add-int/2addr v4, v11

    .line 834
    sub-int/2addr v5, v11

    .line 835
    if-lez v19, :cond_12c

    .line 836
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v6, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_12a
    .catch Ljavax/crypto/ShortBufferException; {:try_start_118 .. :try_end_12a} :catch_14e

    .line 837
    add-int v24, v24, v19

    .line 851
    .end local v19    # "n":I
    :cond_12c
    :goto_12c
    if-gtz v5, :cond_f8

    .line 852
    if-eqz v14, :cond_137

    .line 853
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 855
    :cond_137
    return v24

    .line 811
    .end local v3    # "inArray":[B
    .end local v4    # "inOfs":I
    .end local v6    # "outArray":[B
    .end local v11    # "chunk":I
    .end local v22    # "outSize":I
    .end local v23    # "resized":Z
    .end local v24    # "total":I
    :cond_138
    invoke-static {v5}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v2

    new-array v3, v2, [B

    .line 812
    .restart local v3    # "inArray":[B
    const/4 v4, 0x0

    .restart local v4    # "inOfs":I
    goto :goto_eb

    .restart local v6    # "outArray":[B
    .restart local v22    # "outSize":I
    .restart local v23    # "resized":Z
    .restart local v24    # "total":I
    :cond_140
    move/from16 v2, v22

    .line 820
    goto :goto_fb

    .line 830
    .restart local v11    # "chunk":I
    :cond_143
    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v3

    move v10, v4

    move-object v12, v6

    :try_start_149
    invoke-virtual/range {v8 .. v13}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I
    :try_end_14c
    .catch Ljavax/crypto/ShortBufferException; {:try_start_149 .. :try_end_14c} :catch_14e

    move-result v19

    .restart local v19    # "n":I
    goto :goto_11c

    .line 839
    .end local v19    # "n":I
    :catch_14e
    move-exception v16

    .line 840
    .local v16, "e":Ljavax/crypto/ShortBufferException;
    if-eqz v23, :cond_162

    .line 843
    new-instance v2, Ljava/security/ProviderException;

    .line 844
    const-string/jumbo v8, "Could not determine buffer size"

    .line 843
    invoke-direct {v2, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/security/ProviderException;

    throw v2

    .line 847
    :cond_162
    const/16 v23, 0x1

    .line 848
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v22

    .line 849
    move/from16 v0, v22

    new-array v6, v0, [B

    goto :goto_12c
.end method

.method static getTempArraySize(I)I
    .registers 2
    .param p0, "totalSize"    # I

    .prologue
    .line 737
    const/16 v0, 0x1000

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 730
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/crypto/CipherSpi;->bufferCrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I

    move-result v0

    return v0
.end method

.method protected abstract engineDoFinal([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract engineDoFinal([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract engineGetBlockSize()I
.end method

.method protected abstract engineGetIV()[B
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 946
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract engineGetOutputSize(I)I
.end method

.method protected abstract engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract engineSetMode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method protected abstract engineSetPadding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 5
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 928
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 7
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 555
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, p1, p2, v2}, Ljavax/crypto/CipherSpi;->bufferCrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I
    :try_end_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_4} :catch_10
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_4} :catch_6

    move-result v2

    return v2

    .line 559
    :catch_6
    move-exception v0

    .line 561
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljava/security/ProviderException;

    const-string/jumbo v3, "Internal error in update()"

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 556
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_10
    move-exception v1

    .line 558
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v2, Ljava/security/ProviderException;

    const-string/jumbo v3, "Internal error in update()"

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected abstract engineUpdate([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method

.method protected abstract engineUpdate([BII)[B
.end method

.method protected engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1007
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1008
    const-string/jumbo v1, "The underlying Cipher implementation does not support this method"

    .line 1007
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdateAAD([BII)V
    .registers 6
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 974
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 975
    const-string/jumbo v1, "The underlying Cipher implementation does not support this method"

    .line 974
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .registers 3
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 888
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
