.class public Lcom/android/org/conscrypt/ct/Serialization;
.super Ljava/lang/Object;
.source "Serialization.java"


# static fields
.field private static final DER_LENGTH_LONG_FORM_FLAG:I = 0x80

.field private static final DER_TAG_MASK:I = 0x3f

.field private static final DER_TAG_OCTET_STRING:I = 0x4


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readByte(Ljava/io/InputStream;)B
    .registers 5
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 170
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 171
    .local v0, "b":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_17

    .line 172
    new-instance v2, Lcom/android/org/conscrypt/ct/SerializationException;

    const-string/jumbo v3, "Premature end of input, could not read byte."

    invoke-direct {v2, v3}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_10

    .line 175
    .end local v0    # "b":I
    :catch_10
    move-exception v1

    .line 176
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 174
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "b":I
    :cond_17
    int-to-byte v2, v0

    return v2
.end method

.method public static readDEROctetString(Ljava/io/InputStream;)[B
    .registers 7
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p0}, Lcom/android/org/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v3

    and-int/lit8 v1, v3, 0x3f

    .line 45
    .local v1, "tag":I
    const/4 v3, 0x4

    if-eq v1, v3, :cond_23

    .line 46
    new-instance v3, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Wrong DER tag, expected OCTET STRING, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 49
    :cond_23
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v2

    .line 50
    .local v2, "width":I
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_37

    .line 51
    and-int/lit16 v3, v2, -0x81

    invoke-static {p0, v3}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v0

    .line 56
    .local v0, "length":I
    :goto_32
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    return-object v3

    .line 53
    .end local v0    # "length":I
    :cond_37
    move v0, v2

    .restart local v0    # "length":I
    goto :goto_32
.end method

.method public static readDEROctetString([B)[B
    .registers 2
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFixedBytes(Ljava/io/InputStream;I)[B
    .registers 8
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 108
    if-gez p1, :cond_23

    .line 109
    :try_start_2
    new-instance v3, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Negative length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1c} :catch_1c

    .line 119
    :catch_1c
    move-exception v2

    .line 120
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v3, v2}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 112
    .end local v2    # "e":Ljava/io/IOException;
    :cond_23
    :try_start_23
    new-array v1, p1, [B

    .line 113
    .local v1, "data":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 114
    .local v0, "count":I
    if-ge v0, p1, :cond_50

    .line 115
    new-instance v3, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Premature end of input, expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    const-string/jumbo v5, " bytes, only read "

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_50} :catch_1c

    .line 118
    :cond_50
    return-object v1
.end method

.method public static readList(Ljava/io/InputStream;II)[[B
    .registers 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "listWidth"    # I
    .param p2, "elemWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 76
    .local v0, "data":[B
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .end local p0    # "input":Ljava/io/InputStream;
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 78
    .restart local p0    # "input":Ljava/io/InputStream;
    :goto_e
    :try_start_e
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_23

    .line 79
    invoke-static {p0, p2}, Lcom/android/org/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1b} :catch_1c

    goto :goto_e

    .line 81
    :catch_1c
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v3, v1}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 84
    .end local v1    # "e":Ljava/io/IOException;
    :cond_23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [[B

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    return-object v3
.end method

.method public static readList([BII)[[B
    .registers 4
    .param p0, "input"    # [B
    .param p1, "listWidth"    # I
    .param p2, "elemWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1, p2}, Lcom/android/org/conscrypt/ct/Serialization;->readList(Ljava/io/InputStream;II)[[B

    move-result-object v0

    return-object v0
.end method

.method public static readLong(Ljava/io/InputStream;I)J
    .registers 11
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    .line 152
    if-gt p1, v8, :cond_6

    if-gez p1, :cond_20

    .line 153
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_20
    const-wide/16 v2, 0x0

    .line 157
    .local v2, "result":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, p1, :cond_33

    .line 158
    shl-long v4, v2, v8

    invoke-static {p0}, Lcom/android/org/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    or-long v2, v4, v6

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 161
    :cond_33
    return-wide v2
.end method

.method public static readNumber(Ljava/io/InputStream;I)I
    .registers 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v2, 0x4

    if-gt p1, v2, :cond_5

    if-gez p1, :cond_1f

    .line 133
    :cond_5
    new-instance v2, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_1f
    const/4 v1, 0x0

    .line 137
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    if-ge v0, p1, :cond_30

    .line 138
    shl-int/lit8 v2, v1, 0x8

    invoke-static {p0}, Lcom/android/org/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 141
    :cond_30
    return v1
.end method

.method public static readVariableBytes(Ljava/io/InputStream;I)[B
    .registers 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v0

    .line 97
    .local v0, "length":I
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    return-object v1
.end method

.method public static writeFixedBytes(Ljava/io/OutputStream;[B)V
    .registers 4
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 201
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 205
    return-void

    .line 202
    :catch_4
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static writeNumber(Ljava/io/OutputStream;JI)V
    .registers 13
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "value"    # J
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 217
    if-gez p3, :cond_1e

    .line 218
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Negative width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_1e
    if-ge p3, v1, :cond_55

    mul-int/lit8 v1, p3, 0x8

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v1

    cmp-long v1, p1, v4

    if-ltz v1, :cond_55

    .line 221
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Number too large, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 222
    const-string/jumbo v5, " does not fit in "

    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 222
    const-string/jumbo v5, " bytes"

    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_55
    :goto_55
    if-lez p3, :cond_7c

    .line 227
    add-int/lit8 v1, p3, -0x1

    mul-int/lit8 v1, v1, 0x8

    int-to-long v2, v1

    .line 229
    .local v2, "shift":J
    const-wide/16 v4, 0x40

    cmp-long v1, v2, v4

    if-gez v1, :cond_70

    .line 230
    long-to-int v1, v2

    shr-long v4, p1, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v1, v4

    int-to-byte v1, v1

    :try_start_6a
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 235
    :goto_6d
    add-int/lit8 p3, p3, -0x1

    goto :goto_55

    .line 232
    :cond_70
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_74} :catch_75

    goto :goto_6d

    .line 237
    :catch_75
    move-exception v0

    .line 238
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 240
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "shift":J
    :cond_7c
    return-void
.end method

.method public static writeVariableBytes(Ljava/io/OutputStream;[BI)V
    .registers 5
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 190
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 191
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/ct/Serialization;->writeFixedBytes(Ljava/io/OutputStream;[B)V

    .line 192
    return-void
.end method
