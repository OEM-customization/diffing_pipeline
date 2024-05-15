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
.field private final blacklist out:Lcom/android/okhttp/okio/Buffer;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/Buffer;)V
    .registers 2
    .param p1, "out"    # Lcom/android/okhttp/okio/Buffer;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    .line 375
    return-void
.end method


# virtual methods
.method blacklist writeByteString(Lcom/android/okhttp/okio/ByteString;)V
    .registers 5
    .param p1, "data"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 419
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/Buffer;

    .line 420
    return-void
.end method

.method blacklist writeHeaders(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_5
    if-ge v0, v1, :cond_4d

    .line 382
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/internal/framed/Header;

    iget-object v2, v2, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;

    move-result-object v2

    .line 383
    .local v2, "name":Lcom/android/okhttp/okio/ByteString;
    # getter for: Lcom/android/okhttp/internal/framed/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Hpack;->access$200()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 384
    .local v3, "staticIndex":Ljava/lang/Integer;
    const/4 v4, 0x0

    if-eqz v3, :cond_37

    .line 386
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0xf

    invoke-virtual {p0, v5, v6, v4}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 387
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/internal/framed/Header;

    iget-object v4, v4, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0, v4}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lcom/android/okhttp/okio/ByteString;)V

    goto :goto_4a

    .line 389
    :cond_37
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v5, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 390
    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lcom/android/okhttp/okio/ByteString;)V

    .line 391
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/internal/framed/Header;

    iget-object v4, v4, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0, v4}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lcom/android/okhttp/okio/ByteString;)V

    .line 381
    .end local v2    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v3    # "staticIndex":Ljava/lang/Integer;
    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 394
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_4d
    return-void
.end method

.method blacklist writeInt(III)V
    .registers 7
    .param p1, "value"    # I
    .param p2, "prefixMask"    # I
    .param p3, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    if-ge p1, p2, :cond_a

    .line 400
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 401
    return-void

    .line 405
    :cond_a
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 406
    sub-int/2addr p1, p2

    .line 409
    :goto_12
    const/16 v0, 0x80

    if-lt p1, v0, :cond_22

    .line 410
    and-int/lit8 v0, p1, 0x7f

    .line 411
    .local v0, "b":I
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    or-int/lit16 v2, v0, 0x80

    invoke-virtual {v1, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 412
    ushr-int/lit8 p1, p1, 0x7

    .line 413
    .end local v0    # "b":I
    goto :goto_12

    .line 414
    :cond_22
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 415
    return-void
.end method
