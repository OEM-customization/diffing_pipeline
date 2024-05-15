.class public final Ljava/text/StringCharacterIterator;
.super Ljava/lang/Object;
.source "StringCharacterIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field private greylist-max-o begin:I

.field private greylist-max-o end:I

.field private greylist-max-o pos:I

.field private greylist-max-o text:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;III)V

    .line 79
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;III)V
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .param p4, "pos"    # I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-eqz p1, :cond_2c

    .line 93
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->text:Ljava/lang/String;

    .line 95
    if-ltz p2, :cond_24

    if-gt p2, p3, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_24

    .line 98
    if-lt p4, p2, :cond_1c

    if-gt p4, p3, :cond_1c

    .line 101
    iput p2, p0, Ljava/text/StringCharacterIterator;->begin:I

    .line 102
    iput p3, p0, Ljava/text/StringCharacterIterator;->end:I

    .line 103
    iput p4, p0, Ljava/text/StringCharacterIterator;->pos:I

    .line 104
    return-void

    .line 99
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid substring range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 272
    nop

    .line 273
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/StringCharacterIterator;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_8

    .line 274
    .local v0, "other":Ljava/text/StringCharacterIterator;
    return-object v0

    .line 276
    .end local v0    # "other":Ljava/text/StringCharacterIterator;
    :catch_8
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api current()C
    .registers 3

    .line 166
    iget v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->begin:I

    if-lt v0, v1, :cond_11

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ge v0, v1, :cond_11

    .line 167
    iget-object v1, p0, Ljava/text/StringCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 170
    :cond_11
    const v0, 0xffff

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 240
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 241
    return v0

    .line 242
    :cond_4
    instance-of v1, p1, Ljava/text/StringCharacterIterator;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 243
    return v2

    .line 245
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/text/StringCharacterIterator;

    .line 247
    .local v1, "that":Ljava/text/StringCharacterIterator;
    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->hashCode()I

    move-result v3

    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 248
    return v2

    .line 249
    :cond_18
    iget-object v3, p0, Ljava/text/StringCharacterIterator;->text:Ljava/lang/String;

    iget-object v4, v1, Ljava/text/StringCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 250
    return v2

    .line 251
    :cond_23
    iget v3, p0, Ljava/text/StringCharacterIterator;->pos:I

    iget v4, v1, Ljava/text/StringCharacterIterator;->pos:I

    if-ne v3, v4, :cond_37

    iget v3, p0, Ljava/text/StringCharacterIterator;->begin:I

    iget v4, v1, Ljava/text/StringCharacterIterator;->begin:I

    if-ne v3, v4, :cond_37

    iget v3, p0, Ljava/text/StringCharacterIterator;->end:I

    iget v4, v1, Ljava/text/StringCharacterIterator;->end:I

    if-eq v3, v4, :cond_36

    goto :goto_37

    .line 253
    :cond_36
    return v0

    .line 252
    :cond_37
    :goto_37
    return v2
.end method

.method public whitelist test-api first()C
    .registers 2

    .line 130
    iget v0, p0, Ljava/text/StringCharacterIterator;->begin:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    .line 131
    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public whitelist test-api getBeginIndex()I
    .registers 2

    .line 211
    iget v0, p0, Ljava/text/StringCharacterIterator;->begin:I

    return v0
.end method

.method public whitelist test-api getEndIndex()I
    .registers 2

    .line 220
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    return v0
.end method

.method public whitelist test-api getIndex()I
    .registers 2

    .line 229
    iget v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 262
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/text/StringCharacterIterator;->pos:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/text/StringCharacterIterator;->begin:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api last()C
    .registers 3

    .line 140
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->begin:I

    if-eq v0, v1, :cond_b

    .line 141
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    goto :goto_d

    .line 143
    :cond_b
    iput v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    .line 145
    :goto_d
    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public whitelist test-api next()C
    .registers 4

    .line 180
    iget v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_13

    .line 181
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    .line 182
    iget-object v1, p0, Ljava/text/StringCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 185
    :cond_13
    iput v1, p0, Ljava/text/StringCharacterIterator;->pos:I

    .line 186
    const v0, 0xffff

    return v0
.end method

.method public whitelist test-api previous()C
    .registers 3

    .line 196
    iget v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->begin:I

    if-le v0, v1, :cond_11

    .line 197
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    .line 198
    iget-object v1, p0, Ljava/text/StringCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 201
    :cond_11
    const v0, 0xffff

    return v0
.end method

.method public whitelist test-api setIndex(I)C
    .registers 4
    .param p1, "p"    # I

    .line 154
    iget v0, p0, Ljava/text/StringCharacterIterator;->begin:I

    if-lt p1, v0, :cond_f

    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    if-gt p1, v0, :cond_f

    .line 156
    iput p1, p0, Ljava/text/StringCharacterIterator;->pos:I

    .line 157
    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->current()C

    move-result v0

    return v0

    .line 155
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setText(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .line 116
    if-eqz p1, :cond_10

    .line 118
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->text:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/StringCharacterIterator;->begin:I

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Ljava/text/StringCharacterIterator;->end:I

    .line 121
    iput v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    .line 122
    return-void

    .line 117
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
