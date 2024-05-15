.class public Ljava/util/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private currentPosition:I

.field private delimiterCodePoints:[I

.field private delimiters:Ljava/lang/String;

.field private delimsChanged:Z

.field private hasSurrogates:Z

.field private maxDelimCodePoint:I

.field private maxPosition:I

.field private newPosition:I

.field private retDelims:Z

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 236
    const-string/jumbo v0, " \t\n\r\u000c"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 237
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 222
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;
    .param p3, "returnDelims"    # Z

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-boolean v1, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    .line 195
    iput v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/StringTokenizer;->newPosition:I

    .line 197
    iput-boolean v1, p0, Ljava/util/StringTokenizer;->delimsChanged:Z

    .line 198
    iput-object p1, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/util/StringTokenizer;->maxPosition:I

    .line 200
    iput-object p2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    .line 201
    iput-boolean p3, p0, Ljava/util/StringTokenizer;->retDelims:Z

    .line 202
    invoke-direct {p0}, Ljava/util/StringTokenizer;->setMaxDelimCodePoint()V

    .line 203
    return-void
.end method

.method private isDelimiter(I)Z
    .registers 4
    .param p1, "codePoint"    # I

    .prologue
    .line 300
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljava/util/StringTokenizer;->delimiterCodePoints:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 301
    iget-object v1, p0, Ljava/util/StringTokenizer;->delimiterCodePoints:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_e

    .line 302
    const/4 v1, 0x1

    return v1

    .line 300
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 305
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method private scanToken(I)I
    .registers 6
    .param p1, "startPos"    # I

    .prologue
    .line 271
    move v2, p1

    .line 272
    .local v2, "position":I
    :goto_1
    iget v3, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-ge v2, v3, :cond_1b

    .line 273
    iget-boolean v3, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    if-nez v3, :cond_3d

    .line 274
    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 275
    .local v0, "c":C
    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v0, v3, :cond_3a

    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_3a

    .line 285
    .end local v0    # "c":C
    :cond_1b
    iget-boolean v3, p0, Ljava/util/StringTokenizer;->retDelims:Z

    if-eqz v3, :cond_39

    if-ne p1, v2, :cond_39

    .line 286
    iget-boolean v3, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    if-nez v3, :cond_53

    .line 287
    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 288
    .restart local v0    # "c":C
    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v0, v3, :cond_39

    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_39

    .line 289
    add-int/lit8 v2, v2, 0x1

    .line 296
    .end local v0    # "c":C
    :cond_39
    :goto_39
    return v2

    .line 277
    .restart local v0    # "c":C
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 279
    .end local v0    # "c":C
    :cond_3d
    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 280
    .local v1, "c":I
    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v1, v3, :cond_4d

    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->isDelimiter(I)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 282
    :cond_4d
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 291
    .end local v1    # "c":I
    :cond_53
    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 292
    .restart local v1    # "c":I
    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v1, v3, :cond_39

    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->isDelimiter(I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 293
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_39
.end method

.method private setMaxDelimCodePoint()V
    .registers 7

    .prologue
    .line 143
    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 144
    const/4 v5, 0x0

    iput v5, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    .line 145
    return-void

    .line 148
    :cond_8
    const/4 v4, 0x0

    .line 150
    .local v4, "m":I
    const/4 v1, 0x0

    .line 151
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_37

    .line 152
    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 153
    .local v0, "c":I
    const v5, 0xd800

    if-lt v0, v5, :cond_2c

    const v5, 0xdfff

    if-gt v0, v5, :cond_2c

    .line 154
    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 155
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    .line 157
    :cond_2c
    if-ge v4, v0, :cond_2f

    .line 158
    move v4, v0

    .line 159
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    .line 151
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_b

    .line 161
    .end local v0    # "c":I
    :cond_37
    iput v4, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    .line 163
    iget-boolean v5, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    if-eqz v5, :cond_57

    .line 164
    new-array v5, v1, [I

    iput-object v5, p0, Ljava/util/StringTokenizer;->delimiterCodePoints:[I

    .line 165
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "j":I
    :goto_43
    if-ge v2, v1, :cond_57

    .line 166
    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 167
    .restart local v0    # "c":I
    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiterCodePoints:[I

    aput v0, v5, v2

    .line 165
    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_43

    .line 170
    .end local v0    # "c":I
    .end local v3    # "j":I
    :cond_57
    return-void
.end method

.method private skipDelimiters(I)I
    .registers 6
    .param p1, "startPos"    # I

    .prologue
    .line 245
    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 246
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 248
    :cond_a
    move v2, p1

    .line 249
    .local v2, "position":I
    :goto_b
    iget-boolean v3, p0, Ljava/util/StringTokenizer;->retDelims:Z

    if-nez v3, :cond_29

    iget v3, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-ge v2, v3, :cond_29

    .line 250
    iget-boolean v3, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    if-nez v3, :cond_2d

    .line 251
    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 252
    .local v0, "c":C
    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v0, v3, :cond_29

    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2a

    .line 263
    .end local v0    # "c":C
    :cond_29
    return v2

    .line 254
    .restart local v0    # "c":C
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 256
    .end local v0    # "c":C
    :cond_2d
    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 257
    .local v1, "c":I
    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v1, v3, :cond_29

    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->isDelimiter(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_29

    .line 260
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_b
.end method


# virtual methods
.method public countTokens()I
    .registers 4

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "count":I
    iget v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    .line 422
    .local v1, "currpos":I
    :goto_3
    iget v2, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-ge v1, v2, :cond_f

    .line 423
    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->skipDelimiters(I)I

    move-result v1

    .line 424
    iget v2, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-lt v1, v2, :cond_10

    .line 429
    :cond_f
    return v0

    .line 426
    :cond_10
    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->scanToken(I)I

    move-result v1

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 391
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public hasMoreTokens()Z
    .registers 3

    .prologue
    .line 323
    iget v0, p0, Ljava/util/StringTokenizer;->currentPosition:I

    invoke-direct {p0, v0}, Ljava/util/StringTokenizer;->skipDelimiters(I)I

    move-result v0

    iput v0, p0, Ljava/util/StringTokenizer;->newPosition:I

    .line 324
    iget v0, p0, Ljava/util/StringTokenizer;->newPosition:I

    iget v1, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 407
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 341
    iget v1, p0, Ljava/util/StringTokenizer;->newPosition:I

    if-ltz v1, :cond_20

    iget-boolean v1, p0, Ljava/util/StringTokenizer;->delimsChanged:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_20

    .line 342
    iget v1, p0, Ljava/util/StringTokenizer;->newPosition:I

    .line 341
    :goto_d
    iput v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    .line 345
    iput-boolean v2, p0, Ljava/util/StringTokenizer;->delimsChanged:Z

    .line 346
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/StringTokenizer;->newPosition:I

    .line 348
    iget v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    iget v2, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-lt v1, v2, :cond_27

    .line 349
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 342
    :cond_20
    iget v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->skipDelimiters(I)I

    move-result v1

    goto :goto_d

    .line 350
    :cond_27
    iget v0, p0, Ljava/util/StringTokenizer;->currentPosition:I

    .line 351
    .local v0, "start":I
    iget v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->scanToken(I)I

    move-result v1

    iput v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    .line 352
    iget-object v1, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    iget v2, p0, Ljava/util/StringTokenizer;->currentPosition:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "delim"    # Ljava/lang/String;

    .prologue
    .line 371
    iput-object p1, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/StringTokenizer;->delimsChanged:Z

    .line 376
    invoke-direct {p0}, Ljava/util/StringTokenizer;->setMaxDelimCodePoint()V

    .line 377
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
