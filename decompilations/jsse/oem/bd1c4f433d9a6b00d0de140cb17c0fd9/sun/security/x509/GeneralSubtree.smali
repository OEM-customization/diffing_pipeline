.class public Lsun/security/x509/GeneralSubtree;
.super Ljava/lang/Object;
.source "GeneralSubtree.java"


# static fields
.field private static final MIN_DEFAULT:I = 0x0

.field private static final TAG_MAX:B = 0x1t

.field private static final TAG_MIN:B


# instance fields
.field private maximum:I

.field private minimum:I

.field private myhash:I

.field private name:Lsun/security/x509/GeneralName;


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .registers 8
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v3, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    .line 52
    iput v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    .line 54
    iput v1, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    .line 75
    iget-byte v1, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1c

    .line 76
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding for GeneralSubtree."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_1c
    new-instance v1, Lsun/security/x509/GeneralName;

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/util/DerValue;Z)V

    iput-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    .line 83
    :goto_29
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_70

    .line 84
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 86
    .local v0, "opt":Lsun/security/util/DerValue;
    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4f

    .line 87
    invoke-virtual {v0, v5}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 88
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getInteger()I

    move-result v1

    iput v1, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    goto :goto_29

    .line 90
    :cond_4f
    invoke-virtual {v0, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_67

    .line 91
    invoke-virtual {v0, v5}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 92
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getInteger()I

    move-result v1

    iput v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    goto :goto_29

    .line 94
    :cond_67
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of GeneralSubtree."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_70
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/GeneralName;II)V
    .registers 6
    .param p1, "name"    # Lsun/security/x509/GeneralName;
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v1, -0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    .line 52
    iput v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    .line 54
    iput v1, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    .line 64
    iput-object p1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    .line 65
    iput p2, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    .line 66
    iput p3, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    .line 67
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .registers 8
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, -0x80

    const/4 v4, 0x0

    .line 193
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 195
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralName;->encode(Lsun/security/util/DerOutputStream;)V

    .line 197
    iget v2, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    if-eqz v2, :cond_22

    .line 198
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 199
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget v2, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 200
    invoke-static {v5, v4, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 203
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_22
    iget v2, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_39

    .line 204
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 205
    .restart local v1    # "tmp":Lsun/security/util/DerOutputStream;
    iget v2, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 207
    const/4 v2, 0x1

    .line 206
    invoke-static {v5, v4, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 209
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_39
    const/16 v2, 0x30

    invoke-virtual {p1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 210
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 148
    instance-of v1, p1, Lsun/security/x509/GeneralSubtree;

    if-nez v1, :cond_6

    .line 149
    return v3

    :cond_6
    move-object v0, p1

    .line 150
    check-cast v0, Lsun/security/x509/GeneralSubtree;

    .line 151
    .local v0, "otherGS":Lsun/security/x509/GeneralSubtree;
    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    if-nez v1, :cond_12

    .line 152
    iget-object v1, v0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    if-eqz v1, :cond_1d

    .line 153
    return v3

    .line 156
    :cond_12
    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    iget-object v2, v0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    invoke-virtual {v1, v2}, Lsun/security/x509/GeneralName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 157
    return v3

    .line 159
    :cond_1d
    iget v1, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    iget v2, v0, Lsun/security/x509/GeneralSubtree;->minimum:I

    if-eq v1, v2, :cond_24

    .line 160
    return v3

    .line 161
    :cond_24
    iget v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    iget v2, v0, Lsun/security/x509/GeneralSubtree;->maximum:I

    if-eq v1, v2, :cond_2b

    .line 162
    return v3

    .line 163
    :cond_2b
    const/4 v1, 0x1

    return v1
.end method

.method public getMaximum()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    return v0
.end method

.method public getMinimum()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    return v0
.end method

.method public getName()Lsun/security/x509/GeneralName;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 172
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    if-ne v0, v2, :cond_34

    .line 173
    const/16 v0, 0x11

    iput v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    .line 174
    iget-object v0, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    if-eqz v0, :cond_1a

    .line 175
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    .line 177
    :cond_1a
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    if-eqz v0, :cond_27

    .line 178
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    add-int/2addr v0, v1

    iput v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    .line 180
    :cond_27
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    if-eq v0, v2, :cond_34

    .line 181
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    add-int/2addr v0, v1

    iput v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    .line 184
    :cond_34
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n   GeneralSubtree: [\n    GeneralName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 131
    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    if-nez v1, :cond_56

    const-string/jumbo v1, ""

    .line 130
    :goto_13
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    const-string/jumbo v2, "\n    Minimum: "

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    iget v2, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "s":Ljava/lang/String;
    iget v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5d

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t    Maximum: undefined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    ]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    return-object v0

    .line 131
    .end local v0    # "s":Ljava/lang/String;
    :cond_56
    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    .line 136
    .restart local v0    # "s":Ljava/lang/String;
    :cond_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t    Maximum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_41
.end method
