.class public Ljava/text/ParsePosition;
.super Ljava/lang/Object;
.source "ParsePosition.java"


# instance fields
.field errorIndex:I

.field index:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/ParsePosition;->index:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/ParsePosition;->errorIndex:I

    .line 94
    iput p1, p0, Ljava/text/ParsePosition;->index:I

    .line 95
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 126
    if-nez p1, :cond_4

    return v1

    .line 127
    :cond_4
    instance-of v2, p1, Ljava/text/ParsePosition;

    if-nez v2, :cond_9

    .line 128
    return v1

    :cond_9
    move-object v0, p1

    .line 129
    check-cast v0, Ljava/text/ParsePosition;

    .line 130
    .local v0, "other":Ljava/text/ParsePosition;
    iget v2, p0, Ljava/text/ParsePosition;->index:I

    iget v3, v0, Ljava/text/ParsePosition;->index:I

    if-ne v2, v3, :cond_19

    iget v2, p0, Ljava/text/ParsePosition;->errorIndex:I

    iget v3, v0, Ljava/text/ParsePosition;->errorIndex:I

    if-ne v2, v3, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public getErrorIndex()I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Ljava/text/ParsePosition;->errorIndex:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Ljava/text/ParsePosition;->index:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 138
    iget v0, p0, Ljava/text/ParsePosition;->errorIndex:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Ljava/text/ParsePosition;->index:I

    or-int/2addr v0, v1

    return v0
.end method

.method public setErrorIndex(I)V
    .registers 2
    .param p1, "ei"    # I

    .prologue
    .line 106
    iput p1, p0, Ljava/text/ParsePosition;->errorIndex:I

    .line 107
    return-void
.end method

.method public setIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 85
    iput p1, p0, Ljava/text/ParsePosition;->index:I

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/text/ParsePosition;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    const-string/jumbo v1, "[index="

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    iget v1, p0, Ljava/text/ParsePosition;->index:I

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    const-string/jumbo v1, ",errorIndex="

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    iget v1, p0, Ljava/text/ParsePosition;->errorIndex:I

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    const/16 v1, 0x5d

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
