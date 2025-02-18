.class public Lcom/android/org/bouncycastle/util/io/pem/PemWriter;
.super Ljava/io/BufferedWriter;
.source "PemWriter.java"


# static fields
.field private static final LINE_LENGTH:I = 0x40


# instance fields
.field private buf:[C

.field private final nlLength:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 20
    const/16 v1, 0x40

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    .line 31
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "nl":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    .line 40
    :goto_15
    return-void

    .line 38
    :cond_16
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    goto :goto_15
.end method

.method private writeEncoded([B)V
    .registers 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object p1

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_2d

    .line 107
    const/4 v1, 0x0

    .line 109
    .local v1, "index":I
    :goto_9
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    array-length v2, v2

    if-eq v1, v2, :cond_13

    .line 111
    add-int v2, v0, v1

    array-length v3, p1

    if-lt v2, v3, :cond_21

    .line 118
    :cond_13
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write([CII)V

    .line 119
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    .line 105
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    array-length v2, v2

    add-int/2addr v0, v2

    goto :goto_5

    .line 115
    :cond_21
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    add-int v3, v0, v1

    aget-byte v3, p1, v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 121
    .end local v1    # "index":I
    :cond_2d
    return-void
.end method

.method private writePostEncapsulationBoundary(Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "-----END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    .line 137
    return-void
.end method

.method private writePreEncapsulationBoundary(Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    .line 129
    return-void
.end method


# virtual methods
.method public getOutputSize(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)I
    .registers 8
    .param p1, "obj"    # Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    iget v5, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v3, v4, 0x4

    .line 54
    .local v3, "size":I
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_52

    .line 56
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    .line 60
    .local v1, "hdr":Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string/jumbo v5, ": "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    goto :goto_25

    .line 63
    .end local v1    # "hdr":Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
    :cond_4f
    iget v4, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    add-int/2addr v3, v4

    .line 67
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_52
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    mul-int/lit8 v0, v4, 0x4

    .line 69
    .local v0, "dataLen":I
    add-int/lit8 v4, v0, 0x40

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x40

    iget v5, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v0

    add-int/2addr v3, v4

    .line 71
    return v3
.end method

.method public writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V
    .registers 6
    .param p1, "objGen"    # Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-interface {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;->generate()Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    move-result-object v2

    .line 79
    .local v2, "obj":Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writePreEncapsulationBoundary(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_44

    .line 83
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    .line 87
    .local v0, "hdr":Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v3, ": "

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    goto :goto_1d

    .line 93
    .end local v0    # "hdr":Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
    :cond_41
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    .line 96
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_44
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writeEncoded([B)V

    .line 97
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writePostEncapsulationBoundary(Ljava/lang/String;)V

    .line 98
    return-void
.end method
