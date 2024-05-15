.class final Lcom/android/okhttp/internal/framed/Hpack$Reader;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field blacklist dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

.field blacklist dynamicTableByteCount:I

.field blacklist headerCount:I

.field private final blacklist headerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist headerTableSizeSetting:I

.field private blacklist maxDynamicTableByteCount:I

.field blacklist nextHeaderIndex:I

.field private final blacklist source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor blacklist <init>(ILcom/android/okhttp/okio/Source;)V
    .registers 4
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "source"    # Lcom/android/okhttp/okio/Source;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    .line 123
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/okhttp/internal/framed/Header;

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    .line 125
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerCount:I

    .line 127
    iput v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    .line 130
    iput p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting:I

    .line 131
    iput p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 132
    invoke-static {p2}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 133
    return-void
.end method

.method private blacklist adjustDynamicTableByteCount()V
    .registers 3

    .line 153
    iget v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    iget v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_10

    .line 154
    if-nez v0, :cond_c

    .line 155
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->clearDynamicTable()V

    goto :goto_10

    .line 157
    :cond_c
    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->evictToRecoverBytes(I)I

    .line 160
    :cond_10
    :goto_10
    return-void
.end method

.method private blacklist clearDynamicTable()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerCount:I

    .line 167
    iput v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    .line 168
    return-void
.end method

.method private blacklist dynamicTableIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .line 242
    iget v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private blacklist evictToRecoverBytes(I)I
    .registers 7
    .param p1, "bytesToRecover"    # I

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_3c

    .line 175
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_8
    iget v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    if-lt v1, v2, :cond_2b

    if-lez p1, :cond_2b

    .line 176
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/android/okhttp/internal/framed/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 177
    iget v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/android/okhttp/internal/framed/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    .line 178
    iget v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerCount:I

    .line 179
    add-int/lit8 v0, v0, 0x1

    .line 175
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 181
    .end local v1    # "j":I
    :cond_2b
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v4, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerCount:I

    invoke-static {v1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    .line 185
    :cond_3c
    return v0
.end method

.method private blacklist getName(I)Lcom/android/okhttp/okio/ByteString;
    .registers 4
    .param p1, "index"    # I

    .line 271
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 272
    # getter for: Lcom/android/okhttp/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Hpack;->access$000()[Lcom/android/okhttp/internal/framed/Header;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    return-object v0

    .line 274
    :cond_f
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    # getter for: Lcom/android/okhttp/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Hpack;->access$000()[Lcom/android/okhttp/internal/framed/Header;

    move-result-object v1

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    return-object v0
.end method

.method private blacklist insertIntoDynamicTable(ILcom/android/okhttp/internal/framed/Header;)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "entry"    # Lcom/android/okhttp/internal/framed/Header;

    .line 284
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget v0, p2, Lcom/android/okhttp/internal/framed/Header;->hpackSize:I

    .line 287
    .local v0, "delta":I
    const/4 v1, -0x1

    if-eq p1, v1, :cond_15

    .line 288
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/android/okhttp/internal/framed/Header;->hpackSize:I

    sub-int/2addr v0, v2

    .line 292
    :cond_15
    iget v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    if-le v0, v2, :cond_1d

    .line 293
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->clearDynamicTable()V

    .line 294
    return-void

    .line 298
    :cond_1d
    iget v3, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 299
    .local v3, "bytesToRecover":I
    invoke-direct {p0, v3}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->evictToRecoverBytes(I)I

    move-result v2

    .line 301
    .local v2, "entriesEvicted":I
    if-ne p1, v1, :cond_56

    .line 302
    iget v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    array-length v5, v4

    if-le v1, v5, :cond_44

    .line 303
    array-length v1, v4

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/android/okhttp/internal/framed/Header;

    .line 304
    .local v1, "doubled":[Lcom/android/okhttp/internal/framed/Header;
    const/4 v5, 0x0

    array-length v6, v4

    array-length v7, v4

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    .line 306
    iput-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    .line 308
    .end local v1    # "doubled":[Lcom/android/okhttp/internal/framed/Header;
    :cond_44
    iget v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    move p1, v1

    .line 309
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    aput-object p2, v1, p1

    .line 310
    iget v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerCount:I

    goto :goto_60

    .line 312
    :cond_56
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 313
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    aput-object p2, v1, p1

    .line 315
    :goto_60
    iget v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    .line 316
    return-void
.end method

.method private blacklist isStaticHeader(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 279
    const/4 v0, 0x1

    if-ltz p1, :cond_c

    # getter for: Lcom/android/okhttp/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Hpack;->access$000()[Lcom/android/okhttp/internal/framed/Header;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist readByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private blacklist readIndexedHeader(I)V
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 229
    # getter for: Lcom/android/okhttp/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Hpack;->access$000()[Lcom/android/okhttp/internal/framed/Header;

    move-result-object v0

    aget-object v0, v0, p1

    .line 230
    .local v0, "staticEntry":Lcom/android/okhttp/internal/framed/Header;
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v0    # "staticEntry":Lcom/android/okhttp/internal/framed/Header;
    goto :goto_2d

    .line 232
    :cond_12
    # getter for: Lcom/android/okhttp/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Hpack;->access$000()[Lcom/android/okhttp/internal/framed/Header;

    move-result-object v0

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    .line 233
    .local v0, "dynamicTableIndex":I
    if-ltz v0, :cond_2e

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_2e

    .line 236
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    aget-object v1, v1, v0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v0    # "dynamicTableIndex":I
    :goto_2d
    return-void

    .line 234
    .restart local v0    # "dynamicTableIndex":I
    :cond_2e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header index too large "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .registers 6
    .param p1, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->getName(I)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 260
    .local v0, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    .line 261
    .local v1, "value":Lcom/android/okhttp/okio/ByteString;
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v2, v0, v1}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    const/4 v3, -0x1

    invoke-direct {p0, v3, v2}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->insertIntoDynamicTable(ILcom/android/okhttp/internal/framed/Header;)V

    .line 262
    return-void
.end method

.method private blacklist readLiteralHeaderWithIncrementalIndexingNewName()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    # invokes: Lcom/android/okhttp/internal/framed/Hpack;->checkLowercase(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/Hpack;->access$100(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 266
    .local v0, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    .line 267
    .local v1, "value":Lcom/android/okhttp/okio/ByteString;
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v2, v0, v1}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    const/4 v3, -0x1

    invoke-direct {p0, v3, v2}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->insertIntoDynamicTable(ILcom/android/okhttp/internal/framed/Header;)V

    .line 268
    return-void
.end method

.method private blacklist readLiteralHeaderWithoutIndexingIndexedName(I)V
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->getName(I)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 247
    .local v0, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    .line 248
    .local v1, "value":Lcom/android/okhttp/okio/ByteString;
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v3, v0, v1}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method private blacklist readLiteralHeaderWithoutIndexingNewName()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    # invokes: Lcom/android/okhttp/internal/framed/Hpack;->checkLowercase(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/Hpack;->access$100(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 253
    .local v0, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    .line 254
    .local v1, "value":Lcom/android/okhttp/okio/ByteString;
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v3, v0, v1}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method


# virtual methods
.method public blacklist getAndResetHeaderList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 223
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 224
    return-object v0
.end method

.method blacklist headerTableSizeSetting(I)V
    .registers 2
    .param p1, "headerTableSizeSetting"    # I

    .line 147
    iput p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting:I

    .line 148
    iput p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 149
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->adjustDynamicTableByteCount()V

    .line 150
    return-void
.end method

.method blacklist maxDynamicTableByteCount()I
    .registers 2

    .line 136
    iget v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    return v0
.end method

.method blacklist readByteString()Lcom/android/okhttp/okio/ByteString;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readByte()I

    move-result v0

    .line 347
    .local v0, "firstByte":I
    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 348
    .local v1, "huffmanDecode":Z
    :goto_d
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v2

    .line 350
    .local v2, "length":I
    if-eqz v1, :cond_29

    .line 351
    invoke-static {}, Lcom/android/okhttp/internal/framed/Huffman;->get()Lcom/android/okhttp/internal/framed/Huffman;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v5, v2

    invoke-interface {v4, v5, v6}, Lcom/android/okhttp/okio/BufferedSource;->readByteArray(J)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/framed/Huffman;->decode([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object v3

    return-object v3

    .line 353
    :cond_29
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lcom/android/okhttp/okio/BufferedSource;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    move-result-object v3

    return-object v3
.end method

.method blacklist readHeaders()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 194
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 195
    .local v0, "b":I
    const/16 v1, 0x80

    if-eq v0, v1, :cond_85

    .line 197
    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_24

    .line 198
    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 199
    .local v1, "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readIndexedHeader(I)V

    .line 200
    .end local v1    # "index":I
    goto :goto_83

    :cond_24
    const/16 v1, 0x40

    if-ne v0, v1, :cond_2c

    .line 201
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_83

    .line 202
    :cond_2c
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_3c

    .line 203
    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 204
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    .line 205
    .end local v1    # "index":I
    goto :goto_83

    :cond_3c
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6d

    .line 206
    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 207
    if-ltz v1, :cond_54

    iget v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting:I

    if-gt v1, v2, :cond_54

    .line 211
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->adjustDynamicTableByteCount()V

    goto :goto_83

    .line 209
    :cond_54
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dynamic table size update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_6d
    const/16 v1, 0x10

    if-eq v0, v1, :cond_80

    if-nez v0, :cond_74

    goto :goto_80

    .line 215
    :cond_74
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 216
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto :goto_83

    .line 213
    .end local v1    # "index":I
    :cond_80
    :goto_80
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    .line 218
    .end local v0    # "b":I
    :goto_83
    goto/16 :goto_0

    .line 196
    .restart local v0    # "b":I
    :cond_85
    new-instance v1, Ljava/io/IOException;

    const-string v2, "index == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    .end local v0    # "b":I
    :cond_8d
    return-void
.end method

.method blacklist readInt(II)I
    .registers 8
    .param p1, "firstByte"    # I
    .param p2, "prefixMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    and-int v0, p1, p2

    .line 324
    .local v0, "prefix":I
    if-ge v0, p2, :cond_5

    .line 325
    return v0

    .line 329
    :cond_5
    move v1, p2

    .line 330
    .local v1, "result":I
    const/4 v2, 0x0

    .line 332
    .local v2, "shift":I
    :goto_7
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readByte()I

    move-result v3

    .line 333
    .local v3, "b":I
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_16

    .line 334
    and-int/lit8 v4, v3, 0x7f

    shl-int/2addr v4, v2

    add-int/2addr v1, v4

    .line 335
    add-int/lit8 v2, v2, 0x7

    .line 340
    .end local v3    # "b":I
    goto :goto_7

    .line 337
    .restart local v3    # "b":I
    :cond_16
    shl-int v4, v3, v2

    add-int/2addr v1, v4

    .line 338
    nop

    .line 341
    .end local v3    # "b":I
    return v1
.end method
