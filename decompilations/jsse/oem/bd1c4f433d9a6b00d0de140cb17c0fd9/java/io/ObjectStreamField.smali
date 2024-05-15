.class public Ljava/io/ObjectStreamField;
.super Ljava/lang/Object;
.source "ObjectStreamField.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final field:Ljava/lang/reflect/Field;

.field private final name:Ljava/lang/String;

.field private offset:I

.field private final signature:Ljava/lang/String;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final unshared:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectStreamField;->offset:I

    .line 89
    if-nez p1, :cond_f

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 92
    :cond_f
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    .line 94
    iput-boolean p3, p0, Ljava/io/ObjectStreamField;->unshared:Z

    .line 95
    invoke-static {p2}, Ljava/io/ObjectStreamField;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Ljava/io/ObjectStreamField;->field:Ljava/lang/reflect/Field;

    .line 97
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "unshared"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v1, p0, Ljava/io/ObjectStreamField;->offset:I

    .line 104
    if-nez p1, :cond_f

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 107
    :cond_f
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    .line 108
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    .line 109
    iput-boolean p3, p0, Ljava/io/ObjectStreamField;->unshared:Z

    .line 110
    iput-object v2, p0, Ljava/io/ObjectStreamField;->field:Ljava/lang/reflect/Field;

    .line 112
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_58

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "illegal signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :sswitch_2b
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    .line 125
    :goto_2f
    return-void

    .line 114
    :sswitch_30
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    goto :goto_2f

    .line 115
    :sswitch_35
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    goto :goto_2f

    .line 116
    :sswitch_3a
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    goto :goto_2f

    .line 117
    :sswitch_3f
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    goto :goto_2f

    .line 118
    :sswitch_44
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    goto :goto_2f

    .line 119
    :sswitch_49
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    goto :goto_2f

    .line 120
    :sswitch_4e
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    goto :goto_2f

    .line 122
    :sswitch_53
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    goto :goto_2f

    .line 112
    :sswitch_data_58
    .sparse-switch
        0x42 -> :sswitch_30
        0x43 -> :sswitch_35
        0x44 -> :sswitch_4e
        0x46 -> :sswitch_49
        0x49 -> :sswitch_3f
        0x4a -> :sswitch_44
        0x4c -> :sswitch_53
        0x53 -> :sswitch_3a
        0x5a -> :sswitch_2b
        0x5b -> :sswitch_53
    .end sparse-switch
.end method

.method constructor <init>(Ljava/lang/reflect/Field;ZZ)V
    .registers 6
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "unshared"    # Z
    .param p3, "showType"    # Z

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/ObjectStreamField;->offset:I

    .line 136
    iput-object p1, p0, Ljava/io/ObjectStreamField;->field:Ljava/lang/reflect/Field;

    .line 137
    iput-boolean p2, p0, Ljava/io/ObjectStreamField;->unshared:Z

    .line 138
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 140
    .local v0, "ftype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p3, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_1c
    move-object v1, v0

    :goto_1d
    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    .line 141
    invoke-static {v0}, Ljava/io/ObjectStreamField;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    .line 142
    return-void

    .line 140
    :cond_2a
    const-class v1, Ljava/lang/Object;

    goto :goto_1d
.end method

.method private static getClassSignature(Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 291
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_5

    .line 294
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 295
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_29

    .line 296
    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    :goto_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 297
    :cond_29
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_33

    .line 298
    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 299
    :cond_33
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_3d

    .line 300
    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 301
    :cond_3d
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_47

    .line 302
    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 303
    :cond_47
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_51

    .line 304
    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 305
    :cond_51
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_5b

    .line 306
    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 307
    :cond_5b
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_65

    .line 308
    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 309
    :cond_65
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_6f

    .line 310
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 311
    :cond_6f
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_79

    .line 312
    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 314
    :cond_79
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 317
    :cond_7f
    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    move-object v1, p1

    .line 254
    check-cast v1, Ljava/io/ObjectStreamField;

    .line 255
    .local v1, "other":Ljava/io/ObjectStreamField;
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v0

    .line 256
    .local v0, "isPrim":Z
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v2

    if-eq v0, v2, :cond_13

    .line 257
    if-eqz v0, :cond_11

    const/4 v2, -0x1

    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x1

    goto :goto_10

    .line 259
    :cond_13
    iget-object v2, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    iget-object v3, v1, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method getField()Ljava/lang/reflect/Field;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Ljava/io/ObjectStreamField;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Ljava/io/ObjectStreamField;->offset:I

    return v0
.end method

.method getSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getTypeCode()C
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    goto :goto_7
.end method

.method public isPrimitive()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v2, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 231
    .local v0, "tcode":C
    const/16 v2, 0x4c

    if-eq v0, v2, :cond_10

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public isUnshared()Z
    .registers 2

    .prologue
    .line 243
    iget-boolean v0, p0, Ljava/io/ObjectStreamField;->unshared:Z

    return v0
.end method

.method protected setOffset(I)V
    .registers 2
    .param p1, "offset"    # I

    .prologue
    .line 220
    iput p1, p0, Ljava/io/ObjectStreamField;->offset:I

    .line 221
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
