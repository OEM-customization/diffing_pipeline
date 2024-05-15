.class public abstract Ljavax/crypto/CipherSpi;
.super Ljava/lang/Object;
.source "CipherSpi.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o bufferCrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I
    .registers 28
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

    .line 747
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    if-eqz v8, :cond_1c1

    if-eqz v9, :cond_1c1

    .line 751
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 752
    .local v10, "inPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    .line 753
    .local v11, "inLimit":I
    sub-int v0, v11, v10

    .line 754
    .local v0, "inLen":I
    const/4 v12, 0x0

    if-eqz p3, :cond_1a

    if-nez v0, :cond_1a

    .line 755
    return v12

    .line 757
    :cond_1a
    invoke-virtual {v7, v0}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v13

    .line 758
    .local v13, "outLenNeeded":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v13, :cond_1a5

    .line 763
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v14

    .line 764
    .local v14, "a1":Z
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v15

    .line 766
    .local v15, "a2":Z
    if-eqz v14, :cond_70

    if-eqz v15, :cond_70

    .line 767
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    .line 768
    .local v12, "inArray":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int v16, v1, v10

    .line 769
    .local v16, "inOfs":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    .line 770
    .local v17, "outArray":[B
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v18

    .line 771
    .local v18, "outPos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int v19, v1, v18

    .line 773
    .local v19, "outOfs":I
    if-eqz p3, :cond_59

    .line 774
    move-object/from16 v1, p0

    move-object v2, v12

    move/from16 v3, v16

    move v4, v0

    move-object/from16 v5, v17

    move/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v1

    .local v1, "n":I
    goto :goto_67

    .line 776
    .end local v1    # "n":I
    :cond_59
    move-object/from16 v1, p0

    move-object v2, v12

    move/from16 v3, v16

    move v4, v0

    move-object/from16 v5, v17

    move/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v1

    .line 778
    .restart local v1    # "n":I
    :goto_67
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 779
    add-int v2, v18, v1

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 780
    return v1

    .line 781
    .end local v1    # "n":I
    .end local v12    # "inArray":[B
    .end local v16    # "inOfs":I
    .end local v17    # "outArray":[B
    .end local v18    # "outPos":I
    .end local v19    # "outOfs":I
    :cond_70
    if-nez v14, :cond_d6

    if-eqz v15, :cond_d6

    .line 782
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    .line 783
    .local v16, "outPos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    .line 784
    .restart local v17    # "outArray":[B
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int v1, v1, v16

    .line 785
    .local v1, "outOfs":I
    invoke-static {v0}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v2

    new-array v6, v2, [B

    .line 786
    .local v6, "inArray":[B
    const/4 v2, 0x0

    move/from16 v18, v1

    move/from16 v19, v2

    .line 788
    .end local v1    # "outOfs":I
    .local v18, "outOfs":I
    .local v19, "total":I
    :goto_8d
    array-length v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 789
    .local v5, "chunk":I
    if-lez v5, :cond_97

    .line 790
    invoke-virtual {v8, v6, v12, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 793
    :cond_97
    if-nez p3, :cond_b2

    if-eq v0, v5, :cond_a0

    move/from16 v20, v5

    move-object/from16 v21, v6

    goto :goto_b6

    .line 796
    :cond_a0
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v2, v6

    move v4, v5

    move/from16 v20, v5

    .end local v5    # "chunk":I
    .local v20, "chunk":I
    move-object/from16 v5, v17

    move-object/from16 v21, v6

    .end local v6    # "inArray":[B
    .local v21, "inArray":[B
    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v1

    .local v1, "n":I
    goto :goto_c5

    .line 793
    .end local v1    # "n":I
    .end local v20    # "chunk":I
    .end local v21    # "inArray":[B
    .restart local v5    # "chunk":I
    .restart local v6    # "inArray":[B
    :cond_b2
    move/from16 v20, v5

    move-object/from16 v21, v6

    .line 794
    .end local v5    # "chunk":I
    .end local v6    # "inArray":[B
    .restart local v20    # "chunk":I
    .restart local v21    # "inArray":[B
    :goto_b6
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move/from16 v4, v20

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v1

    .line 798
    .restart local v1    # "n":I
    :goto_c5
    add-int v19, v19, v1

    .line 799
    add-int v18, v18, v1

    .line 800
    sub-int v0, v0, v20

    .line 801
    .end local v1    # "n":I
    .end local v20    # "chunk":I
    if-gtz v0, :cond_d3

    .line 802
    add-int v1, v16, v19

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 803
    return v19

    .line 801
    :cond_d3
    move-object/from16 v6, v21

    goto :goto_8d

    .line 807
    .end local v16    # "outPos":I
    .end local v17    # "outArray":[B
    .end local v18    # "outOfs":I
    .end local v19    # "total":I
    .end local v21    # "inArray":[B
    :cond_d6
    if-eqz v14, :cond_e3

    .line 808
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 809
    .local v1, "inArray":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int/2addr v2, v10

    move-object v6, v1

    .local v2, "inOfs":I
    goto :goto_eb

    .line 811
    .end local v1    # "inArray":[B
    .end local v2    # "inOfs":I
    :cond_e3
    invoke-static {v0}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v1

    new-array v1, v1, [B

    .line 812
    .restart local v1    # "inArray":[B
    const/4 v2, 0x0

    move-object v6, v1

    .line 814
    .end local v1    # "inArray":[B
    .restart local v2    # "inOfs":I
    .restart local v6    # "inArray":[B
    :goto_eb
    invoke-static {v13}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v1

    new-array v1, v1, [B

    .line 815
    .local v1, "outArray":[B
    array-length v3, v1

    .line 816
    .local v3, "outSize":I
    const/4 v4, 0x0

    .line 817
    .local v4, "total":I
    const/4 v5, 0x0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move v5, v0

    move-object v4, v1

    .line 819
    .end local v0    # "inLen":I
    .end local v1    # "outArray":[B
    .end local v3    # "outSize":I
    .local v4, "outArray":[B
    .local v5, "inLen":I
    .local v16, "outSize":I
    .local v17, "total":I
    .local v18, "resized":Z
    :goto_fc
    nop

    .line 820
    if-nez v16, :cond_101

    array-length v0, v6

    goto :goto_103

    :cond_101
    move/from16 v0, v16

    :goto_103
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 821
    .local v3, "chunk":I
    if-nez v14, :cond_114

    if-nez v18, :cond_114

    if-lez v3, :cond_114

    .line 822
    invoke-virtual {v8, v6, v12, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 823
    const/4 v2, 0x0

    move/from16 v19, v2

    goto :goto_116

    .line 827
    :cond_114
    move/from16 v19, v2

    .end local v2    # "inOfs":I
    .local v19, "inOfs":I
    :goto_116
    if-nez p3, :cond_143

    if-eq v5, v3, :cond_123

    move/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    goto :goto_14b

    .line 830
    :cond_123
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v20, v3

    .end local v3    # "chunk":I
    .restart local v20    # "chunk":I
    move/from16 v3, v19

    move-object/from16 v21, v4

    .end local v4    # "outArray":[B
    .local v21, "outArray":[B
    move/from16 v4, v20

    move/from16 v22, v5

    .end local v5    # "inLen":I
    .local v22, "inLen":I
    move-object/from16 v5, v21

    move-object/from16 v23, v6

    .end local v6    # "inArray":[B
    .local v23, "inArray":[B
    move v6, v0

    :try_start_136
    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0
    :try_end_13a
    .catch Ljavax/crypto/ShortBufferException; {:try_start_136 .. :try_end_13a} :catch_13b

    .local v0, "n":I
    goto :goto_15a

    .line 839
    .end local v0    # "n":I
    :catch_13b
    move-exception v0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v5, v22

    goto :goto_17b

    .line 827
    .end local v20    # "chunk":I
    .end local v21    # "outArray":[B
    .end local v22    # "inLen":I
    .end local v23    # "inArray":[B
    .restart local v3    # "chunk":I
    .restart local v4    # "outArray":[B
    .restart local v5    # "inLen":I
    .restart local v6    # "inArray":[B
    :cond_143
    move/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    .line 828
    .end local v3    # "chunk":I
    .end local v4    # "outArray":[B
    .end local v5    # "inLen":I
    .end local v6    # "inArray":[B
    .restart local v20    # "chunk":I
    .restart local v21    # "outArray":[B
    .restart local v22    # "inLen":I
    .restart local v23    # "inArray":[B
    :goto_14b
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, v19

    move/from16 v4, v20

    move-object/from16 v5, v21

    :try_start_156
    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v0
    :try_end_15a
    .catch Ljavax/crypto/ShortBufferException; {:try_start_156 .. :try_end_15a} :catch_174

    .line 832
    .restart local v0    # "n":I
    :goto_15a
    const/16 v18, 0x0

    .line 833
    move/from16 v1, v20

    .end local v20    # "chunk":I
    .local v1, "chunk":I
    add-int v19, v19, v1

    .line 834
    sub-int v5, v22, v1

    .line 835
    .end local v22    # "inLen":I
    .restart local v5    # "inLen":I
    if-lez v0, :cond_16e

    .line 836
    move-object/from16 v2, v21

    .end local v21    # "outArray":[B
    .local v2, "outArray":[B
    :try_start_166
    invoke-virtual {v9, v2, v12, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_169
    .catch Ljavax/crypto/ShortBufferException; {:try_start_166 .. :try_end_169} :catch_16c

    .line 837
    add-int v17, v17, v0

    goto :goto_170

    .line 839
    .end local v0    # "n":I
    :catch_16c
    move-exception v0

    goto :goto_17b

    .line 835
    .end local v2    # "outArray":[B
    .restart local v0    # "n":I
    .restart local v21    # "outArray":[B
    :cond_16e
    move-object/from16 v2, v21

    .line 850
    .end local v0    # "n":I
    .end local v21    # "outArray":[B
    .restart local v2    # "outArray":[B
    :goto_170
    move-object v4, v2

    move/from16 v2, v19

    goto :goto_18b

    .line 839
    .end local v1    # "chunk":I
    .end local v2    # "outArray":[B
    .end local v5    # "inLen":I
    .restart local v20    # "chunk":I
    .restart local v21    # "outArray":[B
    .restart local v22    # "inLen":I
    :catch_174
    move-exception v0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v5, v22

    .line 840
    .end local v20    # "chunk":I
    .end local v21    # "outArray":[B
    .end local v22    # "inLen":I
    .local v0, "e":Ljavax/crypto/ShortBufferException;
    .restart local v1    # "chunk":I
    .restart local v2    # "outArray":[B
    .restart local v5    # "inLen":I
    :goto_17b
    if-nez v18, :cond_197

    .line 847
    const/4 v3, 0x1

    .line 848
    .end local v18    # "resized":Z
    .local v3, "resized":Z
    invoke-virtual {v7, v1}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v4

    .line 849
    .end local v16    # "outSize":I
    .local v4, "outSize":I
    new-array v2, v4, [B

    move/from16 v18, v3

    move/from16 v16, v4

    move-object v4, v2

    move/from16 v2, v19

    .line 851
    .end local v0    # "e":Ljavax/crypto/ShortBufferException;
    .end local v1    # "chunk":I
    .end local v3    # "resized":Z
    .end local v19    # "inOfs":I
    .local v2, "inOfs":I
    .local v4, "outArray":[B
    .restart local v16    # "outSize":I
    .restart local v18    # "resized":Z
    :goto_18b
    if-gtz v5, :cond_193

    .line 852
    if-eqz v14, :cond_192

    .line 853
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 855
    :cond_192
    return v17

    .line 851
    :cond_193
    move-object/from16 v6, v23

    goto/16 :goto_fc

    .line 843
    .end local v4    # "outArray":[B
    .restart local v0    # "e":Ljavax/crypto/ShortBufferException;
    .restart local v1    # "chunk":I
    .local v2, "outArray":[B
    .restart local v19    # "inOfs":I
    :cond_197
    new-instance v3, Ljava/security/ProviderException;

    const-string v4, "Could not determine buffer size"

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 844
    invoke-virtual {v3, v0}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/security/ProviderException;

    throw v3

    .line 759
    .end local v1    # "chunk":I
    .end local v2    # "outArray":[B
    .end local v5    # "inLen":I
    .end local v14    # "a1":Z
    .end local v15    # "a2":Z
    .end local v16    # "outSize":I
    .end local v17    # "total":I
    .end local v18    # "resized":Z
    .end local v19    # "inOfs":I
    .end local v23    # "inArray":[B
    .local v0, "inLen":I
    :cond_1a5
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes of space in output buffer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 748
    .end local v0    # "inLen":I
    .end local v10    # "inPos":I
    .end local v11    # "inLimit":I
    .end local v13    # "outLenNeeded":I
    :cond_1c1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Input and output buffers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o getTempArraySize(I)I
    .registers 2
    .param p0, "totalSize"    # I

    .line 737
    const/16 v0, 0x1000

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected whitelist test-api engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
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

    .line 730
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/crypto/CipherSpi;->bufferCrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I

    move-result v0

    return v0
.end method

.method protected abstract whitelist test-api engineDoFinal([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineDoFinal([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineGetBlockSize()I
.end method

.method protected abstract whitelist test-api engineGetIV()[B
.end method

.method protected whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 946
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract whitelist test-api engineGetOutputSize(I)I
.end method

.method protected abstract whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected abstract whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineSetMode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation
.end method

.method protected whitelist test-api engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
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

    .line 928
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 6
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 555
    const-string v0, "Internal error in update()"

    const/4 v1, 0x1

    :try_start_3
    invoke-direct {p0, p1, p2, v1}, Ljavax/crypto/CipherSpi;->bufferCrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I

    move-result v0
    :try_end_7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_7} :catch_f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_7} :catch_8

    return v0

    .line 559
    :catch_8
    move-exception v1

    .line 561
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljava/security/ProviderException;

    invoke-direct {v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 556
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_f
    move-exception v1

    .line 558
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v2, Ljava/security/ProviderException;

    invoke-direct {v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected abstract whitelist test-api engineUpdate([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineUpdate([BII)[B
.end method

.method protected whitelist test-api engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 1007
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The underlying Cipher implementation does not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineUpdateAAD([BII)V
    .registers 6
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 974
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The underlying Cipher implementation does not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineWrap(Ljava/security/Key;)[B
    .registers 3
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 888
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
