.class final Lcom/android/okhttp/internal/framed/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final out:Lcom/android/okhttp/okio/Buffer;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/Buffer;)V
    .registers 2
    .param p1, "out"    # Lcom/android/okhttp/okio/Buffer;

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    .line 374
    return-void
.end method


# virtual methods
.method writeByteString(Lcom/android/okhttp/okio/ByteString;)V
    .registers 5
    .param p1, "data"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 418
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/Buffer;

    .line 419
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v6, 0x0

    .line 380
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_6
    if-ge v0, v2, :cond_4d

    .line 381
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/internal/framed/Header;

    iget-object v4, v4, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v4}, Lcom/android/okhttp/okio/ByteString;->toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    .line 382
    .local v1, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Hpack;->-get0()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 383
    .local v3, "staticIndex":Ljava/lang/Integer;
    if-eqz v3, :cond_39

    .line 385
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xf

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 386
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/internal/framed/Header;

    iget-object v4, v4, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0, v4}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lcom/android/okhttp/okio/ByteString;)V

    .line 380
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 388
    :cond_39
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v4, v6}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 389
    invoke-virtual {p0, v1}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lcom/android/okhttp/okio/ByteString;)V

    .line 390
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/internal/framed/Header;

    iget-object v4, v4, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0, v4}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lcom/android/okhttp/okio/ByteString;)V

    goto :goto_36

    .line 393
    .end local v1    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v3    # "staticIndex":Ljava/lang/Integer;
    :cond_4d
    return-void
.end method

.method writeInt(III)V
    .registers 7
    .param p1, "value"    # I
    .param p2, "prefixMask"    # I
    .param p3, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    if-ge p1, p2, :cond_a

    .line 399
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    or-int v2, p3, p1

    invoke-virtual {v1, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 400
    return-void

    .line 404
    :cond_a
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    or-int v2, p3, p2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 405
    sub-int/2addr p1, p2

    .line 408
    :goto_12
    const/16 v1, 0x80

    if-lt p1, v1, :cond_22

    .line 409
    and-int/lit8 v0, p1, 0x7f

    .line 410
    .local v0, "b":I
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    or-int/lit16 v2, v0, 0x80

    invoke-virtual {v1, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 411
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_12

    .line 413
    .end local v0    # "b":I
    :cond_22
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v1, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 414
    return-void
.end method
