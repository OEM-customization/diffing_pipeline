.class Lcom/android/okhttp/internal/framed/NameValueBlockReader;
.super Ljava/lang/Object;
.source "NameValueBlockReader.java"


# instance fields
.field private blacklist compressedLimit:I

.field private final blacklist inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

.field private final blacklist source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/okio/BufferedSource;)V
    .registers 5
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/okhttp/internal/framed/NameValueBlockReader$1;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/internal/framed/NameValueBlockReader$1;-><init>(Lcom/android/okhttp/internal/framed/NameValueBlockReader;Lcom/android/okhttp/okio/Source;)V

    .line 66
    .local v0, "throttleSource":Lcom/android/okhttp/okio/Source;
    new-instance v1, Lcom/android/okhttp/internal/framed/NameValueBlockReader$2;

    invoke-direct {v1, p0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader$2;-><init>(Lcom/android/okhttp/internal/framed/NameValueBlockReader;)V

    .line 78
    .local v1, "inflater":Ljava/util/zip/Inflater;
    new-instance v2, Lcom/android/okhttp/okio/InflaterSource;

    invoke-direct {v2, v0, v1}, Lcom/android/okhttp/okio/InflaterSource;-><init>(Lcom/android/okhttp/okio/Source;Ljava/util/zip/Inflater;)V

    iput-object v2, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    .line 79
    invoke-static {v2}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 80
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/internal/framed/NameValueBlockReader;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    .line 38
    iget v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    return v0
.end method

.method static synthetic blacklist access$022(Lcom/android/okhttp/internal/framed/NameValueBlockReader;J)I
    .registers 5
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/NameValueBlockReader;
    .param p1, "x1"    # J

    .line 38
    iget v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    return v0
.end method

.method private blacklist doneReading()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    if-lez v0, :cond_27

    .line 111
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/InflaterSource;->refill()Z

    .line 112
    iget v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    if-nez v0, :cond_e

    goto :goto_27

    :cond_e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressedLimit > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_27
    :goto_27
    return-void
.end method

.method private blacklist readByteString()Lcom/android/okhttp/okio/ByteString;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v0

    .line 103
    .local v0, "length":I
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->close()V

    .line 118
    return-void
.end method

.method public blacklist readNameValueBlock(I)Ljava/util/List;
    .registers 9
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    .line 85
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v0

    .line 86
    .local v0, "numberOfPairs":I
    if-ltz v0, :cond_59

    .line 87
    const/16 v1, 0x400

    if-gt v0, v1, :cond_42

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v0, :cond_3e

    .line 91
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/okio/ByteString;->toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;

    move-result-object v3

    .line 92
    .local v3, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v4

    .line 93
    .local v4, "values":Lcom/android/okhttp/okio/ByteString;
    invoke-virtual {v3}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v5

    if-eqz v5, :cond_36

    .line 94
    new-instance v5, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v5, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v3    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v4    # "values":Lcom/android/okhttp/okio/ByteString;
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 93
    .restart local v3    # "name":Lcom/android/okhttp/okio/ByteString;
    .restart local v4    # "values":Lcom/android/okhttp/okio/ByteString;
    :cond_36
    new-instance v5, Ljava/io/IOException;

    const-string v6, "name.size == 0"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 97
    .end local v2    # "i":I
    .end local v3    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v4    # "values":Lcom/android/okhttp/okio/ByteString;
    :cond_3e
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->doneReading()V

    .line 98
    return-object v1

    .line 87
    .end local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    :cond_42
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numberOfPairs > 1024: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_59
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numberOfPairs < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
