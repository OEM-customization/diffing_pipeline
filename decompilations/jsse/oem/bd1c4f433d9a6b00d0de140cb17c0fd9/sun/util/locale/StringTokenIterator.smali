.class public Lsun/util/locale/StringTokenIterator;
.super Ljava/lang/Object;
.source "StringTokenIterator.java"


# instance fields
.field private delimiterChar:C

.field private dlms:Ljava/lang/String;

.field private done:Z

.field private end:I

.field private start:I

.field private text:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "dlms"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    .line 45
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 46
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lsun/util/locale/StringTokenIterator;->delimiterChar:C

    .line 50
    :goto_13
    invoke-virtual {p0, v2}, Lsun/util/locale/StringTokenIterator;->setStart(I)Lsun/util/locale/StringTokenIterator;

    .line 51
    return-void

    .line 48
    :cond_17
    iput-object p2, p0, Lsun/util/locale/StringTokenIterator;->dlms:Ljava/lang/String;

    goto :goto_13
.end method

.method private nextDelimiter(I)I
    .registers 9
    .param p1, "start"    # I

    .prologue
    .line 109
    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 110
    .local v4, "textlen":I
    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->dlms:Ljava/lang/String;

    if-nez v5, :cond_1b

    .line 111
    move v3, p1

    .local v3, "idx":I
    :goto_b
    if-ge v3, v4, :cond_3c

    .line 112
    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-char v6, p0, Lsun/util/locale/StringTokenIterator;->delimiterChar:C

    if-ne v5, v6, :cond_18

    .line 113
    return v3

    .line 111
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 117
    .end local v3    # "idx":I
    :cond_1b
    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->dlms:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 118
    .local v1, "dlmslen":I
    move v3, p1

    .restart local v3    # "idx":I
    :goto_22
    if-ge v3, v4, :cond_3c

    .line 119
    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 120
    .local v0, "c":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v1, :cond_39

    .line 121
    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->dlms:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_36

    .line 122
    return v3

    .line 120
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 118
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 127
    .end local v0    # "c":C
    .end local v1    # "dlmslen":I
    .end local v2    # "i":I
    :cond_3c
    return v4
.end method


# virtual methods
.method public current()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    return-object v0
.end method

.method public currentEnd()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    return v0
.end method

.method public currentStart()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    return v0
.end method

.method public first()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/util/locale/StringTokenIterator;->setStart(I)Lsun/util/locale/StringTokenIterator;

    .line 55
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 88
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    iget-object v1, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lsun/util/locale/StringTokenIterator;->done:Z

    return v0
.end method

.method public next()Ljava/lang/String;
    .registers 4

    .prologue
    .line 75
    invoke-virtual {p0}, Lsun/util/locale/StringTokenIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 76
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    .line 77
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    invoke-direct {p0, v0}, Lsun/util/locale/StringTokenIterator;->nextDelimiter(I)I

    move-result v0

    iput v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    .line 78
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    iget v1, p0, Lsun/util/locale/StringTokenIterator;->start:I

    iget v2, p0, Lsun/util/locale/StringTokenIterator;->end:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    .line 84
    :goto_20
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    return-object v0

    .line 80
    :cond_23
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    iput v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/util/locale/StringTokenIterator;->done:Z

    goto :goto_20
.end method

.method public setStart(I)Lsun/util/locale/StringTokenIterator;
    .registers 5
    .param p1, "offset"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_e

    .line 93
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 95
    :cond_e
    iput p1, p0, Lsun/util/locale/StringTokenIterator;->start:I

    .line 96
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    invoke-direct {p0, v0}, Lsun/util/locale/StringTokenIterator;->nextDelimiter(I)I

    move-result v0

    iput v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    .line 97
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    iget v1, p0, Lsun/util/locale/StringTokenIterator;->start:I

    iget v2, p0, Lsun/util/locale/StringTokenIterator;->end:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/locale/StringTokenIterator;->done:Z

    .line 99
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lsun/util/locale/StringTokenIterator;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/util/locale/StringTokenIterator;->setStart(I)Lsun/util/locale/StringTokenIterator;

    .line 105
    return-object p0
.end method
