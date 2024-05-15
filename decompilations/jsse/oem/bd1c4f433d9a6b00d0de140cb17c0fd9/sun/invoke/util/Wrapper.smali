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
        "Ljava/lang/Enum",
        "<",
        "Lsun/invoke/util/Wrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/invoke/util/Wrapper;

.field static final synthetic -assertionsDisabled:Z

.field public static final enum BOOLEAN:Lsun/invoke/util/Wrapper;

.field public static final enum BYTE:Lsun/invoke/util/Wrapper;

.field public static final enum CHAR:Lsun/invoke/util/Wrapper;

.field public static final enum DOUBLE:Lsun/invoke/util/Wrapper;

.field public static final enum FLOAT:Lsun/invoke/util/Wrapper;

.field private static final FROM_CHAR:[Lsun/invoke/util/Wrapper;

.field private static final FROM_PRIM:[Lsun/invoke/util/Wrapper;

.field private static final FROM_WRAP:[Lsun/invoke/util/Wrapper;

.field public static final enum INT:Lsun/invoke/util/Wrapper;

.field public static final enum LONG:Lsun/invoke/util/Wrapper;

.field public static final enum OBJECT:Lsun/invoke/util/Wrapper;

.field public static final enum SHORT:Lsun/invoke/util/Wrapper;

.field public static final enum VOID:Lsun/invoke/util/Wrapper;


# instance fields
.field private final basicTypeChar:C

.field private final emptyArray:Ljava/lang/Object;

.field private final format:I

.field private final primitiveSimpleName:Ljava/lang/String;

.field private final primitiveType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final wrapperSimpleName:Ljava/lang/String;

.field private final wrapperType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final zero:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const-class v0, Lsun/invoke/util/Wrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    .line 29
    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "BOOLEAN"

    .line 30
    const-class v3, Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v2, 0x0

    new-array v7, v2, [Z

    const/4 v2, 0x1

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->unsigned(I)I

    move-result v8

    .line 29
    const/4 v2, 0x0

    .line 30
    const/16 v5, 0x5a

    .line 29
    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    .line 30
    sput-object v0, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    .line 31
    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "BYTE"

    .line 32
    const-class v3, Ljava/lang/Byte;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const/4 v2, 0x0

    new-array v7, v2, [B

    const/16 v2, 0x8

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->signed(I)I

    move-result v8

    .line 31
    const/4 v2, 0x1

    .line 32
    const/16 v5, 0x42

    .line 31
    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    .line 32
    sput-object v0, Lsun/invoke/util/Wrapper;->BYTE:Lsun/invoke/util/Wrapper;

    .line 33
    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "SHORT"

    const-class v3, Ljava/lang/Short;

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    const/4 v2, 0x0

    new-array v7, v2, [S

    const/16 v2, 0x10

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->signed(I)I

    move-result v8

    const/4 v2, 0x2

    const/16 v5, 0x53

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->SHORT:Lsun/invoke/util/Wrapper;

    .line 34
    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "CHAR"

    const-class v3, Ljava/lang/Character;

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    const/4 v2, 0x0

    new-array v7, v2, [C

    const/16 v2, 0x10

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->unsigned(I)I

    move-result v8

    const/4 v2, 0x3

    const/16 v5, 0x43

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    .line 35
    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "INT"

    const-class v3, Ljava/lang/Integer;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v2, 0x0

    new-array v7, v2, [I

    const/16 v2, 0x20

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->signed(I)I

    move-result v8

    const/4 v2, 0x4

    const/16 v5, 0x49

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->INT:Lsun/invoke/util/Wrapper;

    .line 36
    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "LONG"

    const-class v3, Ljava/lang/Long;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v2, 0x0

    new-array v7, v2, [J

    const/16 v2, 0x40

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->signed(I)I

    move-result v8

    const/4 v2, 0x5

    const/16 v5, 0x4a

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->LONG:Lsun/invoke/util/Wrapper;

    .line 37
    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "FLOAT"

    const-class v3, Ljava/lang/Float;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v2, 0x0

    new-array v7, v2, [F

    const/16 v2, 0x20

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->floating(I)I

    move-result v8

    const/4 v2, 0x6

    const/16 v5, 0x46

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->FLOAT:Lsun/invoke/util/Wrapper;

    .line 38
    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "DOUBLE"

    const-class v3, Ljava/lang/Double;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v2, 0x0

    new-array v7, v2, [D

    const/16 v2, 0x40

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->floating(I)I

    move-result v8

    const/4 v2, 0x7

    const/16 v5, 0x44

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->DOUBLE:Lsun/invoke/util/Wrapper;

    .line 39
    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "OBJECT"

    const-class v3, Ljava/lang/Object;

    const-class v4, Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->other(I)I

    move-result v8

    const/16 v2, 0x8

    const/16 v5, 0x4c

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    .line 40
    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "VOID"

    .line 41
    const-class v3, Ljava/lang/Void;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->other(I)I

    move-result v8

    .line 40
    const/16 v2, 0x9

    .line 41
    const/16 v5, 0x56

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 40
    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    .line 41
    sput-object v0, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [Lsun/invoke/util/Wrapper;

    sget-object v1, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->BYTE:Lsun/invoke/util/Wrapper;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->SHORT:Lsun/invoke/util/Wrapper;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->INT:Lsun/invoke/util/Wrapper;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->LONG:Lsun/invoke/util/Wrapper;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->FLOAT:Lsun/invoke/util/Wrapper;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->DOUBLE:Lsun/invoke/util/Wrapper;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lsun/invoke/util/Wrapper;->$VALUES:[Lsun/invoke/util/Wrapper;

    .line 164
    sget-boolean v0, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v0, :cond_181

    invoke-static {}, Lsun/invoke/util/Wrapper;->checkConvertibleFrom()Z

    move-result v0

    if-nez v0, :cond_181

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 307
    :cond_181
    const/16 v0, 0x10

    new-array v0, v0, [Lsun/invoke/util/Wrapper;

    sput-object v0, Lsun/invoke/util/Wrapper;->FROM_PRIM:[Lsun/invoke/util/Wrapper;

    .line 308
    const/16 v0, 0x10

    new-array v0, v0, [Lsun/invoke/util/Wrapper;

    sput-object v0, Lsun/invoke/util/Wrapper;->FROM_WRAP:[Lsun/invoke/util/Wrapper;

    .line 309
    const/16 v0, 0x10

    new-array v0, v0, [Lsun/invoke/util/Wrapper;

    sput-object v0, Lsun/invoke/util/Wrapper;->FROM_CHAR:[Lsun/invoke/util/Wrapper;

    .line 325
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    .local v9, "ci":I
    .local v10, "pi":I
    .local v11, "w":Lsun/invoke/util/Wrapper;
    .local v12, "wi":I
    :goto_199
    if-ge v0, v2, :cond_1ee

    aget-object v11, v1, v0

    .line 326
    .end local v9    # "ci":I
    .end local v10    # "pi":I
    .end local v12    # "wi":I
    iget-object v3, v11, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    invoke-static {v3}, Lsun/invoke/util/Wrapper;->hashPrim(Ljava/lang/Class;)I

    move-result v10

    .line 327
    .restart local v10    # "pi":I
    iget-object v3, v11, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    invoke-static {v3}, Lsun/invoke/util/Wrapper;->hashWrap(Ljava/lang/Class;)I

    move-result v12

    .line 328
    .restart local v12    # "wi":I
    iget-char v3, v11, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    invoke-static {v3}, Lsun/invoke/util/Wrapper;->hashChar(C)I

    move-result v9

    .line 329
    .restart local v9    # "ci":I
    sget-boolean v3, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v3, :cond_1bf

    sget-object v3, Lsun/invoke/util/Wrapper;->FROM_PRIM:[Lsun/invoke/util/Wrapper;

    aget-object v3, v3, v10

    if-eqz v3, :cond_1bf

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 330
    :cond_1bf
    sget-boolean v3, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v3, :cond_1cf

    sget-object v3, Lsun/invoke/util/Wrapper;->FROM_WRAP:[Lsun/invoke/util/Wrapper;

    aget-object v3, v3, v12

    if-eqz v3, :cond_1cf

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 331
    :cond_1cf
    sget-boolean v3, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v3, :cond_1df

    sget-object v3, Lsun/invoke/util/Wrapper;->FROM_CHAR:[Lsun/invoke/util/Wrapper;

    aget-object v3, v3, v9

    if-eqz v3, :cond_1df

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 332
    :cond_1df
    sget-object v3, Lsun/invoke/util/Wrapper;->FROM_PRIM:[Lsun/invoke/util/Wrapper;

    aput-object v11, v3, v10

    .line 333
    sget-object v3, Lsun/invoke/util/Wrapper;->FROM_WRAP:[Lsun/invoke/util/Wrapper;

    aput-object v11, v3, v12

    .line 334
    sget-object v3, Lsun/invoke/util/Wrapper;->FROM_CHAR:[Lsun/invoke/util/Wrapper;

    aput-object v11, v3, v9

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_199

    .line 28
    :cond_1ee
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V
    .registers 10
    .param p5, "tchar"    # C
    .param p6, "zero"    # Ljava/lang/Object;
    .param p7, "emptyArray"    # Ljava/lang/Object;
    .param p8, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;C",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
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

    move-result-object v0

    iput-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperSimpleName:Ljava/lang/String;

    .line 61
    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveSimpleName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static asPrimitiveType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
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

.method public static asWrapperType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
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

.method public static basicTypeChar(Ljava/lang/Class;)C
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)C"
        }
    .end annotation

    .prologue
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

.method private static boolValue(B)Z
    .registers 3
    .param p0, "bits"    # B

    .prologue
    const/4 v0, 0x0

    .line 569
    and-int/lit8 v1, p0, 0x1

    int-to-byte p0, v1

    .line 570
    if-eqz p0, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method private static checkConvertibleFrom()Z
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 167
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    .local v0, "w":Lsun/invoke/util/Wrapper;
    :goto_7
    if-ge v4, v6, :cond_168

    aget-object v0, v5, v4

    .line 168
    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_1b

    invoke-virtual {v0, v0}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-nez v2, :cond_1b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 169
    :cond_1b
    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_2d

    sget-object v2, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    invoke-virtual {v2, v0}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-nez v2, :cond_2d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 170
    :cond_2d
    sget-object v2, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    if-eq v0, v2, :cond_55

    .line 171
    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_43

    sget-object v2, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    invoke-virtual {v2, v0}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-nez v2, :cond_43

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 172
    :cond_43
    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_55

    sget-object v2, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    invoke-virtual {v0, v2}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-eqz v2, :cond_55

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 175
    :cond_55
    sget-object v2, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    if-eq v0, v2, :cond_85

    .line 176
    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_6b

    sget-object v2, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    invoke-virtual {v2, v0}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-eqz v2, :cond_6b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 177
    :cond_6b
    sget-object v2, Lsun/invoke/util/Wrapper;->INT:Lsun/invoke/util/Wrapper;

    invoke-virtual {v0, v2}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 178
    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_85

    sget-object v2, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    invoke-virtual {v0, v2}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-eqz v2, :cond_85

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 180
    :cond_85
    sget-object v2, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    if-eq v0, v2, :cond_b5

    .line 181
    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_9b

    sget-object v2, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    invoke-virtual {v2, v0}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-eqz v2, :cond_9b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 182
    :cond_9b
    sget-object v2, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    if-eq v0, v2, :cond_b5

    sget-object v2, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    if-eq v0, v2, :cond_b5

    .line 183
    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_b5

    sget-object v2, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    invoke-virtual {v0, v2}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-eqz v2, :cond_b5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 186
    :cond_b5
    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->isSigned()Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 187
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v7

    array-length v8, v7

    move v2, v3

    :goto_c1
    if-ge v2, v8, :cond_10c

    aget-object v1, v7, v2

    .line 188
    .local v1, "x":Lsun/invoke/util/Wrapper;
    if-ne v0, v1, :cond_ca

    .line 187
    :cond_c7
    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    .line 189
    :cond_ca
    invoke-virtual {v1}, Lsun/invoke/util/Wrapper;->isFloating()Z

    move-result v9

    if-eqz v9, :cond_e0

    .line 190
    sget-boolean v9, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v9, :cond_c7

    invoke-virtual {v0, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v9

    if-eqz v9, :cond_c7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 191
    :cond_e0
    invoke-virtual {v1}, Lsun/invoke/util/Wrapper;->isSigned()Z

    move-result v9

    if-eqz v9, :cond_c7

    .line 192
    invoke-virtual {v0, v1}, Lsun/invoke/util/Wrapper;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-gez v9, :cond_fc

    .line 193
    sget-boolean v9, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v9, :cond_c7

    invoke-virtual {v0, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v9

    if-eqz v9, :cond_c7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 195
    :cond_fc
    sget-boolean v9, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v9, :cond_c7

    invoke-virtual {v0, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v9

    if-nez v9, :cond_c7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 200
    .end local v1    # "x":Lsun/invoke/util/Wrapper;
    :cond_10c
    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->isFloating()Z

    move-result v2

    if-eqz v2, :cond_163

    .line 201
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v7

    array-length v8, v7

    move v2, v3

    :goto_118
    if-ge v2, v8, :cond_163

    aget-object v1, v7, v2

    .line 202
    .restart local v1    # "x":Lsun/invoke/util/Wrapper;
    if-ne v0, v1, :cond_121

    .line 201
    :cond_11e
    add-int/lit8 v2, v2, 0x1

    goto :goto_118

    .line 203
    :cond_121
    invoke-virtual {v1}, Lsun/invoke/util/Wrapper;->isSigned()Z

    move-result v9

    if-eqz v9, :cond_137

    .line 204
    sget-boolean v9, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v9, :cond_11e

    invoke-virtual {v0, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v9

    if-nez v9, :cond_11e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 205
    :cond_137
    invoke-virtual {v1}, Lsun/invoke/util/Wrapper;->isFloating()Z

    move-result v9

    if-eqz v9, :cond_11e

    .line 206
    invoke-virtual {v0, v1}, Lsun/invoke/util/Wrapper;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-gez v9, :cond_153

    .line 207
    sget-boolean v9, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v9, :cond_11e

    invoke-virtual {v0, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v9

    if-eqz v9, :cond_11e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 209
    :cond_153
    sget-boolean v9, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v9, :cond_11e

    invoke-virtual {v0, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v9

    if-nez v9, :cond_11e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 167
    .end local v1    # "x":Lsun/invoke/util/Wrapper;
    :cond_163
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_7

    .line 214
    :cond_168
    const/4 v2, 0x1

    return v2
.end method

.method private convert(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;
    .registers 10
    .param p1, "x"    # Ljava/lang/Object;
    .param p3, "isCast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .prologue
    .line 452
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v5, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    if-ne p0, v5, :cond_1f

    .line 457
    sget-boolean v5, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v5, :cond_14

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_14

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 458
    :cond_14
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 459
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_1d
    move-object v0, p1

    .line 462
    .local v0, "result":Ljava/lang/Object;, "TT;"
    return-object p1

    .line 464
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_1f
    invoke-virtual {p0, p2}, Lsun/invoke/util/Wrapper;->wrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 465
    .local v3, "wtype":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 466
    invoke-virtual {v3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 468
    :cond_2e
    if-nez p3, :cond_47

    .line 469
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 470
    .local v2, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v1

    .line 471
    .local v1, "source":Lsun/invoke/util/Wrapper;
    if-eqz v1, :cond_42

    invoke-virtual {p0, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4c

    .line 472
    :cond_42
    invoke-static {v3, v2}, Lsun/invoke/util/Wrapper;->newClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/ClassCastException;

    move-result-object v5

    throw v5

    .line 474
    .end local v1    # "source":Lsun/invoke/util/Wrapper;
    .end local v2    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_47
    if-nez p1, :cond_4c

    .line 476
    iget-object v4, p0, Lsun/invoke/util/Wrapper;->zero:Ljava/lang/Object;

    .line 477
    .local v4, "z":Ljava/lang/Object;, "TT;"
    return-object v4

    .line 480
    .end local v4    # "z":Ljava/lang/Object;, "TT;"
    :cond_4c
    invoke-virtual {p0, p1}, Lsun/invoke/util/Wrapper;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 481
    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    sget-boolean v5, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v5, :cond_65

    if-nez v0, :cond_60

    const-class v5, Ljava/lang/Void;

    :goto_58
    if-eq v5, v3, :cond_65

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_58

    .line 482
    :cond_65
    return-object v0
.end method

.method static findPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    .prologue
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 247
    sget-object v1, Lsun/invoke/util/Wrapper;->FROM_PRIM:[Lsun/invoke/util/Wrapper;

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->hashPrim(Ljava/lang/Class;)I

    move-result v2

    aget-object v0, v1, v2

    .line 248
    .local v0, "w":Lsun/invoke/util/Wrapper;
    if-eqz v0, :cond_10

    iget-object v1, v0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    if-ne v1, p0, :cond_10

    .line 249
    return-object v0

    .line 251
    :cond_10
    return-object v3
.end method

.method static findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    .prologue
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 270
    sget-object v1, Lsun/invoke/util/Wrapper;->FROM_WRAP:[Lsun/invoke/util/Wrapper;

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->hashWrap(Ljava/lang/Class;)I

    move-result v2

    aget-object v0, v1, v2

    .line 271
    .local v0, "w":Lsun/invoke/util/Wrapper;
    if-eqz v0, :cond_10

    iget-object v1, v0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    if-ne v1, p0, :cond_10

    .line 272
    return-object v0

    .line 274
    :cond_10
    return-object v3
.end method

.method public static forBasicType(C)Lsun/invoke/util/Wrapper;
    .registers 7
    .param p0, "type"    # C

    .prologue
    .line 282
    sget-object v2, Lsun/invoke/util/Wrapper;->FROM_CHAR:[Lsun/invoke/util/Wrapper;

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->hashChar(C)I

    move-result v3

    aget-object v0, v2, v3

    .line 283
    .local v0, "w":Lsun/invoke/util/Wrapper;
    if-eqz v0, :cond_f

    iget-char v2, v0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    if-ne v2, p0, :cond_f

    .line 284
    return-object v0

    .line 286
    :cond_f
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_15
    if-ge v2, v4, :cond_26

    aget-object v1, v3, v2

    .line 287
    .local v1, "x":Lsun/invoke/util/Wrapper;
    iget-char v5, v0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    if-ne v5, p0, :cond_23

    .line 288
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2

    .line 286
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 289
    .end local v1    # "x":Lsun/invoke/util/Wrapper;
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not basic type char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static forBasicType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    .prologue
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

.method public static forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    .prologue
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

    const-string/jumbo v2, "not primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static forWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    .prologue
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

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_d
    if-ge v2, v4, :cond_1e

    aget-object v1, v3, v2

    .line 264
    .local v1, "x":Lsun/invoke/util/Wrapper;
    iget-object v5, v1, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    if-ne v5, p0, :cond_1b

    .line 265
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2

    .line 263
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 266
    .end local v1    # "x":Lsun/invoke/util/Wrapper;
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not wrapper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static forceType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "exampleType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eq p0, p1, :cond_12

    .line 492
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    invoke-static {p1}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v3

    if-ne v2, v3, :cond_51

    .line 491
    :cond_12
    const/4 v1, 0x1

    .line 495
    :goto_13
    if-nez v1, :cond_32

    .line 496
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 497
    :cond_32
    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_8b

    if-eq p0, p1, :cond_48

    .line 498
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    invoke-static {p1}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v3

    if-ne v2, v3, :cond_6e

    .line 497
    :cond_48
    const/4 v2, 0x1

    :goto_49
    if-nez v2, :cond_8b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 493
    :cond_51
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-static {p1}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v3

    if-eq v2, v3, :cond_12

    .line 494
    :cond_61
    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_6c

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    .local v1, "z":Z
    goto :goto_13

    .end local v1    # "z":Z
    :cond_6c
    const/4 v1, 0x0

    .local v1, "z":Z
    goto :goto_13

    .line 499
    .end local v1    # "z":Z
    :cond_6e
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-static {p1}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v3

    if-eq v2, v3, :cond_48

    .line 500
    :cond_7e
    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_89

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_89
    const/4 v2, 0x0

    goto :goto_49

    .line 502
    :cond_8b
    move-object v0, p0

    .line 503
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    return-object p0
.end method

.method private static hashChar(C)I
    .registers 2
    .param p0, "x"    # C

    .prologue
    .line 322
    shr-int/lit8 v0, p0, 0x1

    add-int/2addr v0, p0

    rem-int/lit8 v0, v0, 0x10

    return v0
.end method

.method private static hashPrim(Ljava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, "x":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 311
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "xn":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_d

    return v3

    .line 313
    :cond_d
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x10

    return v1
.end method

.method private static hashWrap(Ljava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "x":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "xn":Ljava/lang/String;
    const/16 v0, 0xa

    .local v0, "offset":I
    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_1b

    const-string/jumbo v2, "java.lang."

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-eq v3, v2, :cond_1b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 318
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    if-ge v2, v3, :cond_25

    const/4 v2, 0x0

    return v2

    .line 319
    :cond_25
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x10

    return v2
.end method

.method public static isPrimitiveType(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public static isWrapperType(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static newClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/ClassCastException;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassCastException;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "actual":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "expected":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not compatible with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static numberValue(Ljava/lang/Object;)Ljava/lang/Number;
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .prologue
    .line 558
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/lang/Number;

    .end local p0    # "x":Ljava/lang/Object;
    return-object p0

    .line 559
    .restart local p0    # "x":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_16

    check-cast p0, Ljava/lang/Character;

    .end local p0    # "x":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 560
    .restart local p0    # "x":Ljava/lang/Object;
    :cond_16
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2a

    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "x":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_23

    .line 562
    .restart local p0    # "x":Ljava/lang/Object;
    :cond_2a
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "x":Ljava/lang/Object;
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/invoke/util/Wrapper;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lsun/invoke/util/Wrapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/invoke/util/Wrapper;

    return-object v0
.end method

.method public static values()[Lsun/invoke/util/Wrapper;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lsun/invoke/util/Wrapper;->$VALUES:[Lsun/invoke/util/Wrapper;

    return-object v0
.end method


# virtual methods
.method public arrayType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->emptyArray:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public basicTypeChar()C
    .registers 2

    .prologue
    .line 411
    iget-char v0, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    return v0
.end method

.method public bitWidth()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    shr-int/lit8 v0, v0, 0x2

    and-int/lit16 v0, v0, 0x3ff

    return v0
.end method

.method public cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 439
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 448
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public copyArrayBoxing(Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 10
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "apos"    # I
    .param p3, "values"    # [Ljava/lang/Object;
    .param p4, "vpos"    # I
    .param p5, "length"    # I

    .prologue
    .line 597
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->arrayType()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    .line 598
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->arrayType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, p5, :cond_33

    .line 600
    add-int v2, v0, p2

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 602
    .local v1, "value":Ljava/lang/Object;
    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_2c

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    if-eq v2, v3, :cond_2c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 603
    :cond_2c
    add-int v2, v0, p4

    aput-object v1, p3, v2

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 605
    .end local v1    # "value":Ljava/lang/Object;
    :cond_33
    return-void
.end method

.method public copyArrayUnboxing([Ljava/lang/Object;ILjava/lang/Object;II)V
    .registers 10
    .param p1, "values"    # [Ljava/lang/Object;
    .param p2, "vpos"    # I
    .param p3, "a"    # Ljava/lang/Object;
    .param p4, "apos"    # I
    .param p5, "length"    # I

    .prologue
    .line 588
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->arrayType()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    .line 589
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->arrayType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, p5, :cond_26

    .line 591
    add-int v2, v0, p2

    aget-object v1, p1, v2

    .line 592
    .local v1, "value":Ljava/lang/Object;
    iget-object v2, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 593
    add-int v2, v0, p4

    invoke-static {p3, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 595
    .end local v1    # "value":Ljava/lang/Object;
    :cond_26
    return-void
.end method

.method public detailString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsun/invoke/util/Wrapper;->wrapperSimpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 68
    iget-char v2, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lsun/invoke/util/Wrapper;->zero:Ljava/lang/Object;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/invoke/util/Wrapper;->format:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 67
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z
    .registers 7
    .param p1, "source"    # Lsun/invoke/util/Wrapper;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 143
    if-ne p0, p1, :cond_5

    return v2

    .line 144
    :cond_5
    invoke-virtual {p0, p1}, Lsun/invoke/util/Wrapper;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_c

    .line 146
    return v4

    .line 150
    :cond_c
    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    iget v3, p1, Lsun/invoke/util/Wrapper;->format:I

    and-int/2addr v1, v3

    and-int/lit16 v1, v1, -0x1000

    if-eqz v1, :cond_1f

    const/4 v0, 0x1

    .line 151
    .local v0, "floatOrSigned":Z
    :goto_16
    if-nez v0, :cond_29

    .line 152
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isOther()Z

    move-result v1

    if-eqz v1, :cond_21

    return v2

    .line 150
    .end local v0    # "floatOrSigned":Z
    :cond_1f
    const/4 v0, 0x0

    .restart local v0    # "floatOrSigned":Z
    goto :goto_16

    .line 154
    :cond_21
    iget v1, p1, Lsun/invoke/util/Wrapper;->format:I

    const/16 v3, 0x41

    if-ne v1, v3, :cond_28

    return v2

    .line 156
    :cond_28
    return v4

    .line 159
    :cond_29
    sget-boolean v1, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v1, :cond_41

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isFloating()Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isSigned()Z

    move-result v1

    :goto_37
    if-nez v1, :cond_41

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3f
    move v1, v2

    goto :goto_37

    .line 160
    :cond_41
    sget-boolean v1, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v1, :cond_59

    invoke-virtual {p1}, Lsun/invoke/util/Wrapper;->isFloating()Z

    move-result v1

    if-nez v1, :cond_57

    invoke-virtual {p1}, Lsun/invoke/util/Wrapper;->isSigned()Z

    move-result v1

    :goto_4f
    if-nez v1, :cond_59

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_57
    move v1, v2

    goto :goto_4f

    .line 161
    :cond_59
    return v2
.end method

.method public isDoubleWord()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 116
    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isFloating()Z
    .registers 3

    .prologue
    .line 128
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    const/16 v1, 0x1081

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isIntegral()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    const/16 v2, 0x1081

    if-ge v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public isNumeric()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 118
    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    and-int/lit8 v1, v1, -0x4

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isOther()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 130
    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    and-int/lit8 v1, v1, -0x4

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isSigned()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 124
    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    if-gez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public isSingleWord()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 114
    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isSubwordOrInt()Z
    .registers 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isIntegral()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isSingleWord()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isUnsigned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 126
    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_d

    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    const/16 v2, 0x1081

    if-ge v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public makeArray(I)Ljava/lang/Object;
    .registers 3
    .param p1, "len"    # I

    .prologue
    .line 582
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public primitiveSimpleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveSimpleName:Ljava/lang/String;

    return-object v0
.end method

.method public primitiveType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    return-object v0
.end method

.method public stackSlots()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    shr-int/lit8 v0, v0, 0x0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public wrap(I)Ljava/lang/Object;
    .registers 4
    .param p1, "x"    # I

    .prologue
    .line 541
    iget-char v0, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 542
    :cond_b
    iget-char v0, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    sparse-switch v0, :sswitch_data_56

    .line 554
    new-instance v0, Ljava/lang/InternalError;

    const-string/jumbo v1, "bad wrapper"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :sswitch_19
    const-string/jumbo v0, "cannot wrap to object type"

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 544
    :sswitch_21
    const/4 v0, 0x0

    return-object v0

    .line 545
    :sswitch_23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 546
    :sswitch_28
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 547
    :sswitch_2e
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 548
    :sswitch_34
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 549
    :sswitch_3a
    int-to-short v0, p1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 550
    :sswitch_40
    int-to-byte v0, p1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 551
    :sswitch_46
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 552
    :sswitch_4c
    int-to-byte v0, p1

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->boolValue(B)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 542
    :sswitch_data_56
    .sparse-switch
        0x42 -> :sswitch_40
        0x43 -> :sswitch_46
        0x44 -> :sswitch_34
        0x46 -> :sswitch_2e
        0x49 -> :sswitch_23
        0x4a -> :sswitch_28
        0x4c -> :sswitch_19
        0x53 -> :sswitch_3a
        0x56 -> :sswitch_21
        0x5a -> :sswitch_4c
    .end sparse-switch
.end method

.method public wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 516
    iget-char v1, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    sparse-switch v1, :sswitch_data_6a

    .line 520
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->numberValue(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 521
    .local v0, "xn":Ljava/lang/Number;
    iget-char v1, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    sparse-switch v1, :sswitch_data_74

    .line 531
    new-instance v1, Ljava/lang/InternalError;

    const-string/jumbo v2, "bad wrapper"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    .end local v0    # "xn":Ljava/lang/Number;
    :sswitch_17
    return-object p1

    .line 518
    :sswitch_18
    const/4 v1, 0x0

    return-object v1

    .line 522
    .restart local v0    # "xn":Ljava/lang/Number;
    :sswitch_1a
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 523
    :sswitch_23
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 524
    :sswitch_2c
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 525
    :sswitch_35
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 526
    :sswitch_3e
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    .line 527
    :sswitch_48
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    .line 528
    :sswitch_52
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 529
    :sswitch_5c
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Lsun/invoke/util/Wrapper;->boolValue(B)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 516
    nop

    :sswitch_data_6a
    .sparse-switch
        0x4c -> :sswitch_17
        0x56 -> :sswitch_18
    .end sparse-switch

    .line 521
    :sswitch_data_74
    .sparse-switch
        0x42 -> :sswitch_48
        0x43 -> :sswitch_52
        0x44 -> :sswitch_35
        0x46 -> :sswitch_2c
        0x49 -> :sswitch_1a
        0x4a -> :sswitch_23
        0x53 -> :sswitch_3e
        0x5a -> :sswitch_5c
    .end sparse-switch
.end method

.method public wrapperSimpleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperSimpleName:Ljava/lang/String;

    return-object v0
.end method

.method public wrapperType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    return-object v0
.end method

.method public wrapperType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "exampleType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 354
    return-object p1

    .line 355
    :cond_5
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    if-eq p1, v0, :cond_f

    .line 356
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_16

    .line 358
    :cond_f
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    invoke-static {v0, p1}, Lsun/invoke/util/Wrapper;->forceType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 357
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    .line 355
    if-nez v0, :cond_f

    .line 360
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    invoke-static {p1, v0}, Lsun/invoke/util/Wrapper;->newClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0
.end method

.method public zero()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->zero:Ljava/lang/Object;

    return-object v0
.end method

.method public zero(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->zero:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
