.class public Ljava/text/FieldPosition;
.super Ljava/lang/Object;
.source "FieldPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/FieldPosition$Delegate;
    }
.end annotation


# instance fields
.field private attribute:Ljava/text/Format$Field;

.field beginIndex:I

.field endIndex:I

.field field:I


# direct methods
.method static synthetic -wrap0(Ljava/text/FieldPosition;Ljava/text/Format$Field;)Z
    .registers 3
    .param p0, "-this"    # Ljava/text/FieldPosition;
    .param p1, "attribute"    # Ljava/text/Format$Field;

    .prologue
    invoke-direct {p0, p1}, Ljava/text/FieldPosition;->matchesField(Ljava/text/Format$Field;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/text/FieldPosition;Ljava/text/Format$Field;I)Z
    .registers 4
    .param p0, "-this"    # Ljava/text/FieldPosition;
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "field"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/text/FieldPosition;->matchesField(Ljava/text/Format$Field;I)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "field"    # I

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v0, p0, Ljava/text/FieldPosition;->field:I

    .line 85
    iput v0, p0, Ljava/text/FieldPosition;->endIndex:I

    .line 91
    iput v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 110
    iput p1, p0, Ljava/text/FieldPosition;->field:I

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;)V
    .registers 3
    .param p1, "attribute"    # Ljava/text/Format$Field;

    .prologue
    .line 123
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;I)V
    .registers 4
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "fieldID"    # I

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v0, p0, Ljava/text/FieldPosition;->field:I

    .line 85
    iput v0, p0, Ljava/text/FieldPosition;->endIndex:I

    .line 91
    iput v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 143
    iput-object p1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    .line 144
    iput p2, p0, Ljava/text/FieldPosition;->field:I

    .line 145
    return-void
.end method

.method private matchesField(Ljava/text/Format$Field;)Z
    .registers 3
    .param p1, "attribute"    # Ljava/text/Format$Field;

    .prologue
    .line 264
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-eqz v0, :cond_b

    .line 265
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v0, p1}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 267
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private matchesField(Ljava/text/Format$Field;I)Z
    .registers 4
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "field"    # I

    .prologue
    .line 276
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-eqz v0, :cond_b

    .line 277
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v0, p1}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 279
    :cond_b
    iget v0, p0, Ljava/text/FieldPosition;->field:I

    if-ne p2, v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 222
    if-nez p1, :cond_4

    return v1

    .line 223
    :cond_4
    instance-of v2, p1, Ljava/text/FieldPosition;

    if-nez v2, :cond_9

    .line 224
    return v1

    :cond_9
    move-object v0, p1

    .line 225
    check-cast v0, Ljava/text/FieldPosition;

    .line 226
    .local v0, "other":Ljava/text/FieldPosition;
    iget-object v2, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-nez v2, :cond_15

    .line 227
    iget-object v2, v0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-eqz v2, :cond_20

    .line 228
    return v1

    .line 231
    :cond_15
    iget-object v2, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    iget-object v3, v0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v2, v3}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 232
    return v1

    .line 234
    :cond_20
    iget v2, p0, Ljava/text/FieldPosition;->beginIndex:I

    iget v3, v0, Ljava/text/FieldPosition;->beginIndex:I

    if-ne v2, v3, :cond_33

    .line 235
    iget v2, p0, Ljava/text/FieldPosition;->endIndex:I

    iget v3, v0, Ljava/text/FieldPosition;->endIndex:I

    if-ne v2, v3, :cond_33

    .line 236
    iget v2, p0, Ljava/text/FieldPosition;->field:I

    iget v3, v0, Ljava/text/FieldPosition;->field:I

    if-ne v2, v3, :cond_33

    const/4 v1, 0x1

    .line 234
    :cond_33
    return v1
.end method

.method public getBeginIndex()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    return v0
.end method

.method public getEndIndex()I
    .registers 2

    .prologue
    .line 184
    iget v0, p0, Ljava/text/FieldPosition;->endIndex:I

    return v0
.end method

.method public getField()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Ljava/text/FieldPosition;->field:I

    return v0
.end method

.method public getFieldAttribute()Ljava/text/Format$Field;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    return-object v0
.end method

.method getFieldDelegate()Ljava/text/Format$FieldDelegate;
    .registers 3

    .prologue
    .line 214
    new-instance v0, Ljava/text/FieldPosition$Delegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/text/FieldPosition$Delegate;-><init>(Ljava/text/FieldPosition;Ljava/text/FieldPosition$Delegate;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 244
    iget v0, p0, Ljava/text/FieldPosition;->field:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Ljava/text/FieldPosition;->beginIndex:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Ljava/text/FieldPosition;->endIndex:I

    or-int/2addr v0, v1

    return v0
.end method

.method public setBeginIndex(I)V
    .registers 2
    .param p1, "bi"    # I

    .prologue
    .line 194
    iput p1, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 195
    return-void
.end method

.method public setEndIndex(I)V
    .registers 2
    .param p1, "ei"    # I

    .prologue
    .line 204
    iput p1, p0, Ljava/text/FieldPosition;->endIndex:I

    .line 205
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/text/FieldPosition;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    const-string/jumbo v1, "[field="

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    iget v1, p0, Ljava/text/FieldPosition;->field:I

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    const-string/jumbo v1, ",attribute="

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    iget-object v1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 254
    const-string/jumbo v1, ",beginIndex="

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 254
    iget v1, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    const-string/jumbo v1, ",endIndex="

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    iget v1, p0, Ljava/text/FieldPosition;->endIndex:I

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    const/16 v1, 0x5d

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
