.class Lcom/android/okhttp/internal/framed/NameValueBlockReader;
.super Ljava/lang/Object;
.source "NameValueBlockReader.java"


# instance fields
.field private compressedLimit:I

.field private final inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

.field private final source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/framed/NameValueBlockReader;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    .prologue
    iget v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/framed/NameValueBlockReader;I)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/NameValueBlockReader;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    return p1
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/BufferedSource;)V
    .registers 5
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v1, Lcom/android/okhttp/internal/framed/NameValueBlockReader$1;

    invoke-direct {v1, p0, p1}, Lcom/android/okhttp/internal/framed/NameValueBlockReader$1;-><init>(Lcom/android/okhttp/internal/framed/NameValueBlockReader;Lcom/android/okhttp/okio/Source;)V

    .line 65
    .local v1, "throttleSource":Lcom/android/okhttp/okio/Source;
    new-instance v0, Lcom/android/okhttp/internal/framed/NameValueBlockReader$2;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader$2;-><init>(Lcom/android/okhttp/internal/framed/NameValueBlockReader;)V

    .line 77
    .local v0, "inflater":Ljava/util/zip/Inflater;
    new-instance v2, Lcom/android/okhttp/okio/InflaterSource;

    invoke-direct {v2, v1, v0}, Lcom/android/okhttp/okio/InflaterSource;-><init>(Lcom/android/okhttp/okio/Source;Ljava/util/zip/Inflater;)V

    iput-object v2, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    .line 78
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    invoke-static {v2}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 79
    return-void
.end method

.method private doneReading()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    if-lez v0, :cond_29

    .line 110
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/InflaterSource;->refill()Z

    .line 111
    iget v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    if-eqz v0, :cond_29

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "compressedLimit > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_29
    return-void
.end method

.method private readByteString()Lcom/android/okhttp/okio/ByteString;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v0

    .line 102
    .local v0, "length":I
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->close()V

    .line 117
    return-void
.end method

.method public readNameValueBlock(I)Ljava/util/List;
    .registers 10
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget v5, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    add-int/2addr v5, p1

    iput v5, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    .line 84
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v3

    .line 85
    .local v3, "numberOfPairs":I
    if-gez v3, :cond_27

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "numberOfPairs < 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 86
    :cond_27
    const/16 v5, 0x400

    if-le v3, v5, :cond_45

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "numberOfPairs > 1024: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4b
    if-ge v1, v3, :cond_73

    .line 90
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/okio/ByteString;->toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;

    move-result-object v2

    .line 91
    .local v2, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v4

    .line 92
    .local v4, "values":Lcom/android/okhttp/okio/ByteString;
    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v5

    if-nez v5, :cond_68

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "name.size == 0"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 93
    :cond_68
    new-instance v5, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v5, v2, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 96
    .end local v2    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v4    # "values":Lcom/android/okhttp/okio/ByteString;
    :cond_73
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->doneReading()V

    .line 97
    return-object v0
.end method
