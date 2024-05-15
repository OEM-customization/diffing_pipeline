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
.field private greylist-max-o attribute:Ljava/text/Format$Field;

.field greylist-max-o beginIndex:I

.field greylist-max-o endIndex:I

.field greylist-max-o field:I


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(I)V
    .registers 3
    .param p1, "field"    # I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

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

.method public constructor whitelist core-platform-api test-api <init>(Ljava/text/Format$Field;)V
    .registers 3
    .param p1, "attribute"    # Ljava/text/Format$Field;

    .line 123
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    .line 124
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/text/Format$Field;I)V
    .registers 4
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "fieldID"    # I

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

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

.method static synthetic blacklist access$100(Ljava/text/FieldPosition;Ljava/text/Format$Field;)Z
    .registers 3
    .param p0, "x0"    # Ljava/text/FieldPosition;
    .param p1, "x1"    # Ljava/text/Format$Field;

    .line 73
    invoke-direct {p0, p1}, Ljava/text/FieldPosition;->matchesField(Ljava/text/Format$Field;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$200(Ljava/text/FieldPosition;Ljava/text/Format$Field;I)Z
    .registers 4
    .param p0, "x0"    # Ljava/text/FieldPosition;
    .param p1, "x1"    # Ljava/text/Format$Field;
    .param p2, "x2"    # I

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/text/FieldPosition;->matchesField(Ljava/text/Format$Field;I)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o matchesField(Ljava/text/Format$Field;)Z
    .registers 3
    .param p1, "attribute"    # Ljava/text/Format$Field;

    .line 264
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-eqz v0, :cond_9

    .line 265
    invoke-virtual {v0, p1}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 267
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o matchesField(Ljava/text/Format$Field;I)Z
    .registers 4
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "field"    # I

    .line 276
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-eqz v0, :cond_9

    .line 277
    invoke-virtual {v0, p1}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 279
    :cond_9
    iget v0, p0, Ljava/text/FieldPosition;->field:I

    if-ne p2, v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 222
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 223
    :cond_4
    instance-of v1, p1, Ljava/text/FieldPosition;

    if-nez v1, :cond_9

    .line 224
    return v0

    .line 225
    :cond_9
    move-object v1, p1

    check-cast v1, Ljava/text/FieldPosition;

    .line 226
    .local v1, "other":Ljava/text/FieldPosition;
    iget-object v2, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-nez v2, :cond_15

    .line 227
    iget-object v2, v1, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-eqz v2, :cond_1e

    .line 228
    return v0

    .line 231
    :cond_15
    iget-object v3, v1, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v2, v3}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 232
    return v0

    .line 234
    :cond_1e
    iget v2, p0, Ljava/text/FieldPosition;->beginIndex:I

    iget v3, v1, Ljava/text/FieldPosition;->beginIndex:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Ljava/text/FieldPosition;->endIndex:I

    iget v3, v1, Ljava/text/FieldPosition;->endIndex:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Ljava/text/FieldPosition;->field:I

    iget v3, v1, Ljava/text/FieldPosition;->field:I

    if-ne v2, v3, :cond_31

    const/4 v0, 0x1

    :cond_31
    return v0
.end method

.method public whitelist core-platform-api test-api getBeginIndex()I
    .registers 2

    .line 174
    iget v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    return v0
.end method

.method public whitelist core-platform-api test-api getEndIndex()I
    .registers 2

    .line 184
    iget v0, p0, Ljava/text/FieldPosition;->endIndex:I

    return v0
.end method

.method public whitelist core-platform-api test-api getField()I
    .registers 2

    .line 165
    iget v0, p0, Ljava/text/FieldPosition;->field:I

    return v0
.end method

.method public whitelist core-platform-api test-api getFieldAttribute()Ljava/text/Format$Field;
    .registers 2

    .line 156
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    return-object v0
.end method

.method greylist-max-o getFieldDelegate()Ljava/text/Format$FieldDelegate;
    .registers 3

    .line 214
    new-instance v0, Ljava/text/FieldPosition$Delegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/text/FieldPosition$Delegate;-><init>(Ljava/text/FieldPosition;Ljava/text/FieldPosition$1;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

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

.method public whitelist core-platform-api test-api setBeginIndex(I)V
    .registers 2
    .param p1, "bi"    # I

    .line 194
    iput p1, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 195
    return-void
.end method

.method public whitelist core-platform-api test-api setEndIndex(I)V
    .registers 2
    .param p1, "ei"    # I

    .line 204
    iput p1, p0, Ljava/text/FieldPosition;->endIndex:I

    .line 205
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/text/FieldPosition;->field:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",attribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",beginIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/text/FieldPosition;->beginIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",endIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/text/FieldPosition;->endIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
