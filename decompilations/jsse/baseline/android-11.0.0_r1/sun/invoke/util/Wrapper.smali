.class public final enum Lsun/invoke/util/Wrapper;
.super Ljava/lang/Enum;
.source "Wrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/invoke/util/Wrapper$Format;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/invoke/util/Wrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/invoke/util/Wrapper;

.field static final synthetic blacklist $assertionsDisabled:Z

.field public static final enum blacklist BOOLEAN:Lsun/invoke/util/Wrapper;

.field public static final enum blacklist BYTE:Lsun/invoke/util/Wrapper;

.field public static final enum blacklist CHAR:Lsun/invoke/util/Wrapper;

.field public static final enum blacklist DOUBLE:Lsun/invoke/util/Wrapper;

.field public static final enum blacklist FLOAT:Lsun/invoke/util/Wrapper;

.field private static final blacklist FROM_CHAR:[Lsun/invoke/util/Wrapper;

.field private static final blacklist FROM_PRIM:[Lsun/invoke/util/Wrapper;

.field private static final blacklist FROM_WRAP:[Lsun/invoke/util/Wrapper;

.field public static final enum blacklist INT:Lsun/invoke/util/Wrapper;

.field public static final enum blacklist LONG:Lsun/invoke/util/Wrapper;

.field public static final enum blacklist OBJECT:Lsun/invoke/util/Wrapper;

.field public static final enum blacklist SHORT:Lsun/invoke/util/Wrapper;

.field public static final enum blacklist VOID:Lsun/invoke/util/Wrapper;


# instance fields
.field private final blacklist basicTypeChar:C

.field private final blacklist emptyArray:Ljava/lang/Object;

.field private final blacklist format:I

.field private final blacklist primitiveSimpleName:Ljava/lang/String;

.field private final blacklist primitiveType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist wrapperSimpleName:Ljava/lang/String;

.field private final blacklist wrapperType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist zero:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 30

    .line 28
    nop

    .line 30
    new-instance v9, Lsun/invoke/util/Wrapper;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v5, 0x5a

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-array v7, v10, [Z

    const/4 v11, 0x1

    invoke-static {v11}, Lsun/invoke/util/Wrapper$Format;->unsigned(I)I

    move-result v8

    const-string v1, "BOOLEAN"

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v9, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    .line 32
    new-instance v0, Lsun/invoke/util/Wrapper;

    const/4 v14, 0x1

    const-class v15, Ljava/lang/Byte;

    sget-object v16, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x42

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    new-array v1, v10, [B

    const/16 v2, 0x8

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->signed(I)I

    move-result v20

    const-string v13, "BYTE"

    move-object v12, v0

    move-object/from16 v19, v1

    invoke-direct/range {v12 .. v20}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->BYTE:Lsun/invoke/util/Wrapper;

    .line 33
    new-instance v0, Lsun/invoke/util/Wrapper;

    const/16 v23, 0x2

    const-class v24, Ljava/lang/Short;

    sget-object v25, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x53

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v27

    new-array v1, v10, [S

    const/16 v3, 0x10

    invoke-static {v3}, Lsun/invoke/util/Wrapper$Format;->signed(I)I

    move-result v29

    const-string v22, "SHORT"

    move-object/from16 v21, v0

    move-object/from16 v28, v1

    invoke-direct/range {v21 .. v29}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->SHORT:Lsun/invoke/util/Wrapper;

    .line 34
    new-instance v0, Lsun/invoke/util/Wrapper;

    const/4 v14, 0x3

    const-class v15, Ljava/lang/Character;

    sget-object v16, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x43

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v18

    new-array v1, v10, [C

    invoke-static {v3}, Lsun/invoke/util/Wrapper$Format;->unsigned(I)I

    move-result v20

    const-string v13, "CHAR"

    move-object v12, v0

    move-object/from16 v19, v1

    invoke-direct/range {v12 .. v20}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    .line 35
    new-instance v0, Lsun/invoke/util/Wrapper;

    const/16 v23, 0x4

    const-class v24, Ljava/lang/Integer;

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x49

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    new-array v1, v10, [I

    const/16 v4, 0x20

    invoke-static {v4}, Lsun/invoke/util/Wrapper$Format;->signed(I)I

    move-result v29

    const-string v22, "INT"

    move-object/from16 v21, v0

    move-object/from16 v28, v1

    invoke-direct/range {v21 .. v29}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->INT:Lsun/invoke/util/Wrapper;

    .line 36
    new-instance v0, Lsun/invoke/util/Wrapper;

    const/4 v14, 0x5

    const-class v15, Ljava/lang/Long;

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x4a

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    new-array v1, v10, [J

    const/16 v5, 0x40

    invoke-static {v5}, Lsun/invoke/util/Wrapper$Format;->signed(I)I

    move-result v20

    const-string v13, "LONG"

    move-object v12, v0

    move-object/from16 v19, v1

    invoke-direct/range {v12 .. v20}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->LONG:Lsun/invoke/util/Wrapper;

    .line 37
    new-instance v0, Lsun/invoke/util/Wrapper;

    const/16 v23, 0x6

    const-class v24, Ljava/lang/Float;

    sget-object v25, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x46

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    new-array v1, v10, [F

    invoke-static {v4}, Lsun/invoke/util/Wrapper$Format;->floating(I)I

    move-result v29

    const-string v22, "FLOAT"

    move-object/from16 v21, v0

    move-object/from16 v28, v1

    invoke-direct/range {v21 .. v29}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->FLOAT:Lsun/invoke/util/Wrapper;

    .line 38
    new-instance v0, Lsun/invoke/util/Wrapper;

    const/4 v14, 0x7

    const-class v15, Ljava/lang/Double;

    sget-object v16, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x44

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    new-array v1, v10, [D

    invoke-static {v5}, Lsun/invoke/util/Wrapper$Format;->floating(I)I

    move-result v20

    const-string v13, "DOUBLE"

    move-object v12, v0

    move-object/from16 v19, v1

    invoke-direct/range {v12 .. v20}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->DOUBLE:Lsun/invoke/util/Wrapper;

    .line 39
    new-instance v0, Lsun/invoke/util/Wrapper;

    const/16 v23, 0x8

    const-class v24, Ljava/lang/Object;

    const-class v25, Ljava/lang/Object;

    const/16 v26, 0x4c

    const/16 v27, 0x0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v11}, Lsun/invoke/util/Wrapper$Format;->other(I)I

    move-result v29

    const-string v22, "OBJECT"

    move-object/from16 v21, v0

    move-object/from16 v28, v1

    invoke-direct/range {v21 .. v29}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    .line 41
    new-instance v0, Lsun/invoke/util/Wrapper;

    const/16 v14, 0x9

    const-class v15, Ljava/lang/Void;

    sget-object v16, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x56

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static {v10}, Lsun/invoke/util/Wrapper$Format;->other(I)I

    move-result v20

    const-string v13, "VOID"

    move-object v12, v0

    invoke-direct/range {v12 .. v20}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    .line 28
    const/16 v1, 0xa

    new-array v1, v1, [Lsun/invoke/util/Wrapper;

    sget-object v4, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    aput-object v4, v1, v10

    sget-object v4, Lsun/invoke/util/Wrapper;->BYTE:Lsun/invoke/util/Wrapper;

    aput-object v4, v1, v11

    const/4 v4, 0x2

    sget-object v5, Lsun/invoke/util/Wrapper;->SHORT:Lsun/invoke/util/Wrapper;

    aput-object v5, v1, v4

    const/4 v4, 0x3

    sget-object v5, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    aput-object v5, v1, v4

    const/4 v4, 0x4

    sget-object v5, Lsun/invoke/util/Wrapper;->INT:Lsun/invoke/util/Wrapper;

    aput-object v5, v1, v4

    const/4 v4, 0x5

    sget-object v5, Lsun/invoke/util/Wrapper;->LONG:Lsun/invoke/util/Wrapper;

    aput-object v5, v1, v4

    const/4 v4, 0x6

    sget-object v5, Lsun/invoke/util/Wrapper;->FLOAT:Lsun/invoke/util/Wrapper;

    aput-object v5, v1, v4

    const/4 v4, 0x7

    sget-object v5, Lsun/invoke/util/Wrapper;->DOUBLE:Lsun/invoke/util/Wrapper;

    aput-object v5, v1, v4

    sget-object v4, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sput-object v1, Lsun/invoke/util/Wrapper;->$VALUES:[Lsun/invoke/util/Wrapper;

    .line 164
    nop

    .line 307
    new-array v0, v3, [Lsun/invoke/util/Wrapper;

    sput-object v0, Lsun/invoke/util/Wrapper;->FROM_PRIM:[Lsun/invoke/util/Wrapper;

    .line 308
    new-array v0, v3, [Lsun/invoke/util/Wrapper;

    sput-object v0, Lsun/invoke/util/Wrapper;->FROM_WRAP:[Lsun/invoke/util/Wrapper;

    .line 309
    new-array v0, v3, [Lsun/invoke/util/Wrapper;

    sput-object v0, Lsun/invoke/util/Wrapper;->FROM_CHAR:[Lsun/invoke/util/Wrapper;

    .line 325
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v0

    array-length v1, v0

    :goto_179
    if-ge v10, v1, :cond_1a1

    aget-object v2, v0, v10

    .line 326
    .local v2, "w":Lsun/invoke/util/Wrapper;
    iget-object v3, v2, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    invoke-static {v3}, Lsun/invoke/util/Wrapper;->hashPrim(Ljava/lang/Class;)I

    move-result v3

    .line 327
    .local v3, "pi":I
    iget-object v4, v2, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    invoke-static {v4}, Lsun/invoke/util/Wrapper;->hashWrap(Ljava/lang/Class;)I

    move-result v4

    .line 328
    .local v4, "wi":I
    iget-char v5, v2, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    invoke-static {v5}, Lsun/invoke/util/Wrapper;->hashChar(C)I

    move-result v5

    .line 329
    .local v5, "ci":I
    nop

    .line 330
    nop

    .line 331
    nop

    .line 332
    sget-object v6, Lsun/invoke/util/Wrapper;->FROM_PRIM:[Lsun/invoke/util/Wrapper;

    aput-object v2, v6, v3

    .line 333
    sget-object v6, Lsun/invoke/util/Wrapper;->FROM_WRAP:[Lsun/invoke/util/Wrapper;

    aput-object v2, v6, v4

    .line 334
    sget-object v6, Lsun/invoke/util/Wrapper;->FROM_CHAR:[Lsun/invoke/util/Wrapper;

    aput-object v2, v6, v5

    .line 325
    .end local v2    # "w":Lsun/invoke/util/Wrapper;
    .end local v3    # "pi":I
    .end local v4    # "wi":I
    .end local v5    # "ci":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_179

    .line 337
    :cond_1a1
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V
    .registers 9
    .param p5, "tchar"    # C
    .param p6, "zero"    # Ljava/lang/Object;
    .param p7, "emptyArray"    # Ljava/lang/Object;
    .param p8, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;C",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 53
    .local p3, "wtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    .line 55
    iput-object p4, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    .line 56
    iput-char p5, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    .line 57
    iput-object p6, p0, Lsun/invoke/util/Wrapper;->zero:Ljava/lang/Object;

    .line 58
    iput-object p7, p0, Lsun/invoke/util/Wrapper;->emptyArray:Ljava/lang/Object;

    .line 59
    iput p8, p0, Lsun/invoke/util/Wrapper;->format:I

    .line 60
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsun/invoke/util/Wrapper;->wrapperSimpleName:Ljava/lang/String;

    .line 61
    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsun/invoke/util/Wrapper;->primitiveSimpleName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static blacklist asPrimitiveType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 381
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    .line 382
    .local v0, "w":Lsun/invoke/util/Wrapper;
    if-eqz v0, :cond_f

    .line 383
    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->primitiveType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p0}, Lsun/invoke/util/Wrapper;->forceType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 385
    :cond_f
    return-object p0
.end method

.method public static blacklist asWrapperType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 371
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 372
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/invoke/util/Wrapper;->wrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 374
    :cond_f
    return-object p0
.end method

.method public static blacklist basicTypeChar(Ljava/lang/Class;)C
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)C"
        }
    .end annotation

    .line 402
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_9

    .line 403
    const/16 v0, 0x4c

    return v0

    .line 405
    :cond_9
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar()C

    move-result v0

    return v0
.end method

.method private static blacklist boolValue(B)Z
    .registers 2
    .param p0, "bits"    # B

    .line 569
    and-int/lit8 v0, p0, 0x1

    int-to-byte p0, v0

    .line 570
    if-eqz p0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static blacklist checkConvertibleFrom()Z
    .registers 10

    .line 167
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_83

    aget-object v4, v0, v3

    .line 168
    .local v4, "w":Lsun/invoke/util/Wrapper;
    nop

    .line 169
    nop

    .line 170
    sget-object v5, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    if-eq v4, v5, :cond_12

    .line 171
    nop

    .line 175
    :cond_12
    sget-object v5, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    if-eq v4, v5, :cond_1f

    .line 176
    nop

    .line 177
    sget-object v5, Lsun/invoke/util/Wrapper;->INT:Lsun/invoke/util/Wrapper;

    invoke-virtual {v4, v5}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 180
    :cond_1f
    sget-object v5, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    if-eq v4, v5, :cond_2c

    .line 181
    nop

    .line 182
    sget-object v5, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    if-eq v4, v5, :cond_2c

    sget-object v5, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    if-eq v4, v5, :cond_2c

    .line 186
    :cond_2c
    invoke-virtual {v4}, Lsun/invoke/util/Wrapper;->isSigned()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 187
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_38
    if-ge v7, v6, :cond_56

    aget-object v8, v5, v7

    .line 188
    .local v8, "x":Lsun/invoke/util/Wrapper;
    if-ne v4, v8, :cond_3f

    goto :goto_53

    .line 189
    :cond_3f
    invoke-virtual {v8}, Lsun/invoke/util/Wrapper;->isFloating()Z

    move-result v9

    if-eqz v9, :cond_46

    .line 190
    goto :goto_53

    .line 191
    :cond_46
    invoke-virtual {v8}, Lsun/invoke/util/Wrapper;->isSigned()Z

    move-result v9

    if-eqz v9, :cond_53

    .line 192
    invoke-virtual {v4, v8}, Lsun/invoke/util/Wrapper;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-gez v9, :cond_53

    .line 193
    nop

    .line 187
    .end local v8    # "x":Lsun/invoke/util/Wrapper;
    :cond_53
    :goto_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    .line 200
    :cond_56
    invoke-virtual {v4}, Lsun/invoke/util/Wrapper;->isFloating()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 201
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_62
    if-ge v7, v6, :cond_80

    aget-object v8, v5, v7

    .line 202
    .restart local v8    # "x":Lsun/invoke/util/Wrapper;
    if-ne v4, v8, :cond_69

    goto :goto_7d

    .line 203
    :cond_69
    invoke-virtual {v8}, Lsun/invoke/util/Wrapper;->isSigned()Z

    move-result v9

    if-eqz v9, :cond_70

    .line 204
    goto :goto_7d

    .line 205
    :cond_70
    invoke-virtual {v8}, Lsun/invoke/util/Wrapper;->isFloating()Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 206
    invoke-virtual {v4, v8}, Lsun/invoke/util/Wrapper;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-gez v9, :cond_7d

    .line 207
    nop

    .line 201
    .end local v8    # "x":Lsun/invoke/util/Wrapper;
    :cond_7d
    :goto_7d
    add-int/lit8 v7, v7, 0x1

    goto :goto_62

    .line 167
    .end local v4    # "w":Lsun/invoke/util/Wrapper;
    :cond_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 214
    :cond_83
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist convert(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;
    .registers 8
    .param p1, "x"    # Ljava/lang/Object;
    .param p3, "isCast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 452
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    if-ne p0, v0, :cond_10

    .line 457
    nop

    .line 458
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_e

    .line 459
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_e
    move-object v0, p1

    .line 462
    .local v0, "result":Ljava/lang/Object;, "TT;"
    return-object v0

    .line 464
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_10
    invoke-virtual {p0, p2}, Lsun/invoke/util/Wrapper;->wrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 465
    .local v0, "wtype":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 466
    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 468
    :cond_1f
    if-nez p3, :cond_37

    .line 469
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 470
    .local v1, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    .line 471
    .local v2, "source":Lsun/invoke/util/Wrapper;
    if-eqz v2, :cond_32

    invoke-virtual {p0, v2}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v3

    if-eqz v3, :cond_32

    .end local v1    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "source":Lsun/invoke/util/Wrapper;
    goto :goto_3c

    .line 472
    .restart local v1    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "source":Lsun/invoke/util/Wrapper;
    :cond_32
    invoke-static {v0, v1}, Lsun/invoke/util/Wrapper;->newClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/ClassCastException;

    move-result-object v3

    throw v3

    .line 474
    .end local v1    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "source":Lsun/invoke/util/Wrapper;
    :cond_37
    if-nez p1, :cond_3c

    .line 476
    iget-object v1, p0, Lsun/invoke/util/Wrapper;->zero:Ljava/lang/Object;

    .line 477
    .local v1, "z":Ljava/lang/Object;, "TT;"
    return-object v1

    .line 474
    .end local v1    # "z":Ljava/lang/Object;, "TT;"
    :cond_3c
    :goto_3c
    nop

    .line 480
    invoke-virtual {p0, p1}, Lsun/invoke/util/Wrapper;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 481
    .local v1, "result":Ljava/lang/Object;, "TT;"
    nop

    .line 482
    return-object v1
.end method

.method static blacklist findPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    .line 247
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lsun/invoke/util/Wrapper;->FROM_PRIM:[Lsun/invoke/util/Wrapper;

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->hashPrim(Ljava/lang/Class;)I

    move-result v1

    aget-object v0, v0, v1

    .line 248
    .local v0, "w":Lsun/invoke/util/Wrapper;
    if-eqz v0, :cond_f

    iget-object v1, v0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    if-ne v1, p0, :cond_f

    .line 249
    return-object v0

    .line 251
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    .line 270
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lsun/invoke/util/Wrapper;->FROM_WRAP:[Lsun/invoke/util/Wrapper;

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->hashWrap(Ljava/lang/Class;)I

    move-result v1

    aget-object v0, v0, v1

    .line 271
    .local v0, "w":Lsun/invoke/util/Wrapper;
    if-eqz v0, :cond_f

    iget-object v1, v0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    if-ne v1, p0, :cond_f

    .line 272
    return-object v0

    .line 274
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist forBasicType(C)Lsun/invoke/util/Wrapper;
    .registers 7
    .param p0, "type"    # C

    .line 282
    sget-object v0, Lsun/invoke/util/Wrapper;->FROM_CHAR:[Lsun/invoke/util/Wrapper;

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->hashChar(C)I

    move-result v1

    aget-object v0, v0, v1

    .line 283
    .local v0, "w":Lsun/invoke/util/Wrapper;
    if-eqz v0, :cond_f

    iget-char v1, v0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    if-ne v1, p0, :cond_f

    .line 284
    return-object v0

    .line 286
    :cond_f
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    .line 287
    .local v4, "x":Lsun/invoke/util/Wrapper;
    iget-char v5, v0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    if-eq v5, p0, :cond_20

    .line 286
    .end local v4    # "x":Lsun/invoke/util/Wrapper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 288
    .restart local v4    # "x":Lsun/invoke/util/Wrapper;
    :cond_20
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 289
    .end local v4    # "x":Lsun/invoke/util/Wrapper;
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not basic type char: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist forBasicType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    .line 296
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 297
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    return-object v0

    .line 298
    :cond_b
    sget-object v0, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    return-object v0
.end method

.method public static blacklist forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    .line 239
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    .line 240
    .local v0, "w":Lsun/invoke/util/Wrapper;
    if-eqz v0, :cond_7

    return-object v0

    .line 241
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 242
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 243
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist forWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    .line 261
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    .line 262
    .local v0, "w":Lsun/invoke/util/Wrapper;
    if-eqz v0, :cond_7

    return-object v0

    .line 263
    :cond_7
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 264
    .local v4, "x":Lsun/invoke/util/Wrapper;
    iget-object v5, v4, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    if-eq v5, p0, :cond_18

    .line 263
    .end local v4    # "x":Lsun/invoke/util/Wrapper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 265
    .restart local v4    # "x":Lsun/invoke/util/Wrapper;
    :cond_18
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 266
    .end local v4    # "x":Lsun/invoke/util/Wrapper;
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not wrapper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static blacklist forceType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 491
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "exampleType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eq p0, p1, :cond_2f

    .line 492
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-static {p1}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v1

    if-eq v0, v1, :cond_2f

    .line 493
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p1}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v1

    if-eq v0, v1, :cond_2f

    :cond_22
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_2d

    .line 494
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v0, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    .line 495
    .local v0, "z":Z
    :goto_30
    if-nez v0, :cond_4b

    .line 496
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 497
    :cond_4b
    nop

    .line 502
    move-object v1, p0

    .line 503
    .local v1, "result":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    return-object v1
.end method

.method private static blacklist hashChar(C)I
    .registers 2
    .param p0, "x"    # C

    .line 322
    shr-int/lit8 v0, p0, 0x1

    add-int/2addr v0, p0

    rem-int/lit8 v0, v0, 0x10

    return v0
.end method

.method private static blacklist hashPrim(Ljava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 311
    .local p0, "x":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "xn":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ge v1, v3, :cond_d

    return v2

    .line 313
    :cond_d
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x10

    return v1
.end method

.method private static blacklist hashWrap(Ljava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 316
    .local p0, "x":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "xn":Ljava/lang/String;
    const/16 v1, 0xa

    .line 318
    .local v1, "offset":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    if-ge v2, v3, :cond_10

    const/4 v2, 0x0

    return v2

    .line 319
    :cond_10
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x10

    return v2
.end method

.method public static blacklist isPrimitiveType(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 395
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public static blacklist isWrapperType(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 390
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist newClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/ClassCastException;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassCastException;"
        }
    .end annotation

    .line 364
    .local p0, "actual":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "expected":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not compatible with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "x"    # Ljava/lang/Object;

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist numberValue(Ljava/lang/Object;)Ljava/lang/Number;
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 558
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    return-object v0

    .line 559
    :cond_8
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_18

    move-object v0, p0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 560
    :cond_18
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_28

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 562
    :cond_28
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/invoke/util/Wrapper;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lsun/invoke/util/Wrapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/invoke/util/Wrapper;

    return-object v0
.end method

.method public static blacklist values()[Lsun/invoke/util/Wrapper;
    .registers 1

    .line 28
    sget-object v0, Lsun/invoke/util/Wrapper;->$VALUES:[Lsun/invoke/util/Wrapper;

    invoke-virtual {v0}, [Lsun/invoke/util/Wrapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/invoke/util/Wrapper;

    return-object v0
.end method


# virtual methods
.method public blacklist arrayType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->emptyArray:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public blacklist basicTypeChar()C
    .registers 2

    .line 411
    iget-char v0, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    return v0
.end method

.method public blacklist bitWidth()I
    .registers 2

    .line 110
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    shr-int/lit8 v0, v0, 0x2

    and-int/lit16 v0, v0, 0x3ff

    return v0
.end method

.method public blacklist cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 439
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 448
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist copyArrayBoxing(Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 9
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "apos"    # I
    .param p3, "values"    # [Ljava/lang/Object;
    .param p4, "vpos"    # I
    .param p5, "length"    # I

    .line 597
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->arrayType()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    .line 598
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->arrayType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, p5, :cond_22

    .line 600
    add-int v1, v0, p2

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 602
    .local v1, "value":Ljava/lang/Object;
    nop

    .line 603
    add-int v2, v0, p4

    aput-object v1, p3, v2

    .line 599
    .end local v1    # "value":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 605
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method public blacklist copyArrayUnboxing([Ljava/lang/Object;ILjava/lang/Object;II)V
    .registers 9
    .param p1, "values"    # [Ljava/lang/Object;
    .param p2, "vpos"    # I
    .param p3, "a"    # Ljava/lang/Object;
    .param p4, "apos"    # I
    .param p5, "length"    # I

    .line 588
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->arrayType()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    .line 589
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->arrayType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, p5, :cond_26

    .line 591
    add-int v1, v0, p2

    aget-object v1, p1, v1

    .line 592
    .local v1, "value":Ljava/lang/Object;
    iget-object v2, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 593
    add-int v2, v0, p4

    invoke-static {p3, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 590
    .end local v1    # "value":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 595
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method public blacklist detailString()Ljava/lang/String;
    .registers 5

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsun/invoke/util/Wrapper;->wrapperSimpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-char v2, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    .line 68
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lsun/invoke/util/Wrapper;->zero:Ljava/lang/Object;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lsun/invoke/util/Wrapper;->format:I

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 67
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    return-object v0
.end method

.method public blacklist isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z
    .registers 7
    .param p1, "source"    # Lsun/invoke/util/Wrapper;

    .line 143
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 144
    :cond_4
    invoke-virtual {p0, p1}, Lsun/invoke/util/Wrapper;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_c

    .line 146
    return v2

    .line 150
    :cond_c
    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    iget v3, p1, Lsun/invoke/util/Wrapper;->format:I

    and-int/2addr v1, v3

    and-int/lit16 v1, v1, -0x1000

    if-eqz v1, :cond_17

    move v1, v0

    goto :goto_18

    :cond_17
    move v1, v2

    .line 151
    .local v1, "floatOrSigned":Z
    :goto_18
    if-nez v1, :cond_29

    .line 152
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isOther()Z

    move-result v3

    if-eqz v3, :cond_21

    return v0

    .line 154
    :cond_21
    iget v3, p1, Lsun/invoke/util/Wrapper;->format:I

    const/16 v4, 0x41

    if-ne v3, v4, :cond_28

    return v0

    .line 156
    :cond_28
    return v2

    .line 159
    :cond_29
    nop

    .line 160
    nop

    .line 161
    return v0
.end method

.method public blacklist isDoubleWord()Z
    .registers 2

    .line 116
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isFloating()Z
    .registers 3

    .line 128
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    const/16 v1, 0x1081

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isIntegral()Z
    .registers 3

    .line 120
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    const/16 v1, 0x1081

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isNumeric()Z
    .registers 2

    .line 118
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    and-int/lit8 v0, v0, -0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isOther()Z
    .registers 2

    .line 130
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    and-int/lit8 v0, v0, -0x4

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isSigned()Z
    .registers 2

    .line 124
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isSingleWord()Z
    .registers 3

    .line 114
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist isSubwordOrInt()Z
    .registers 2

    .line 122
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isIntegral()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isSingleWord()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isUnsigned()Z
    .registers 3

    .line 126
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_b

    const/16 v1, 0x1081

    if-ge v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist makeArray(I)Ljava/lang/Object;
    .registers 3
    .param p1, "len"    # I

    .line 582
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist primitiveSimpleName()Ljava/lang/String;
    .registers 2

    .line 419
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveSimpleName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist primitiveType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist stackSlots()I
    .registers 2

    .line 112
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    shr-int/lit8 v0, v0, 0x0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public blacklist wrap(I)Ljava/lang/Object;
    .registers 5
    .param p1, "x"    # I

    .line 541
    iget-char v0, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 542
    :cond_b
    const/16 v2, 0x46

    if-eq v0, v2, :cond_66

    if-eq v0, v1, :cond_5f

    const/16 v1, 0x53

    if-eq v0, v1, :cond_59

    const/16 v1, 0x56

    if-eq v0, v1, :cond_57

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x49

    if-eq v0, v1, :cond_48

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_42

    packed-switch v0, :pswitch_data_6c

    .line 554
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "bad wrapper"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :pswitch_30
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 551
    :pswitch_36
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 550
    :pswitch_3c
    int-to-byte v0, p1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 546
    :cond_42
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 545
    :cond_48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 552
    :cond_4d
    int-to-byte v0, p1

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->boolValue(B)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 544
    :cond_57
    const/4 v0, 0x0

    return-object v0

    .line 549
    :cond_59
    int-to-short v0, p1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 543
    :cond_5f
    const-string v0, "cannot wrap to object type"

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 547
    :cond_66
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_data_6c
    .packed-switch 0x42
        :pswitch_3c
        :pswitch_36
        :pswitch_30
    .end packed-switch
.end method

.method public blacklist wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "x"    # Ljava/lang/Object;

    .line 516
    iget-char v0, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_80

    const/16 v1, 0x56

    if-eq v0, v1, :cond_7e

    .line 520
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->numberValue(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 521
    .local v0, "xn":Ljava/lang/Number;
    iget-char v1, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    const/16 v2, 0x46

    if-eq v1, v2, :cond_75

    const/16 v2, 0x53

    if-eq v1, v2, :cond_6b

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_5e

    const/16 v2, 0x49

    if-eq v1, v2, :cond_55

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_4c

    packed-switch v1, :pswitch_data_82

    .line 531
    new-instance v1, Ljava/lang/InternalError;

    const-string v2, "bad wrapper"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 525
    :pswitch_2f
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 528
    :pswitch_38
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 527
    :pswitch_42
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    .line 523
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 522
    :cond_55
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 529
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Lsun/invoke/util/Wrapper;->boolValue(B)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 526
    :cond_6b
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    .line 524
    :cond_75
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 518
    .end local v0    # "xn":Ljava/lang/Number;
    :cond_7e
    const/4 v0, 0x0

    return-object v0

    .line 517
    :cond_80
    return-object p1

    nop

    :pswitch_data_82
    .packed-switch 0x42
        :pswitch_42
        :pswitch_38
        :pswitch_2f
    .end packed-switch
.end method

.method public blacklist wrapperSimpleName()Ljava/lang/String;
    .registers 2

    .line 415
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperSimpleName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist wrapperType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist wrapperType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 353
    .local p1, "exampleType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 354
    return-object p1

    .line 355
    :cond_5
    iget-object v1, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    if-eq p1, v1, :cond_1b

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_1b

    .line 357
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1b

    .line 360
    :cond_14
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    invoke-static {p1, v0}, Lsun/invoke/util/Wrapper;->newClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    .line 358
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    invoke-static {v0, p1}, Lsun/invoke/util/Wrapper;->forceType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public blacklist zero()Ljava/lang/Object;
    .registers 2

    .line 225
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->zero:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist zero(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 231
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->zero:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
