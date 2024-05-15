.class public Ljava/nio/charset/CoderResult;
.super Ljava/lang/Object;
.source "CoderResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/charset/CoderResult$1;,
        Ljava/nio/charset/CoderResult$2;,
        Ljava/nio/charset/CoderResult$Cache;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final CR_ERROR_MIN:I = 0x2

.field private static final CR_MALFORMED:I = 0x2

.field private static final CR_OVERFLOW:I = 0x1

.field private static final CR_UNDERFLOW:I = 0x0

.field private static final CR_UNMAPPABLE:I = 0x3

.field public static final OVERFLOW:Ljava/nio/charset/CoderResult;

.field public static final UNDERFLOW:Ljava/nio/charset/CoderResult;

.field private static malformedCache:Ljava/nio/charset/CoderResult$Cache;

.field private static final names:[Ljava/lang/String;

.field private static unmappableCache:Ljava/nio/charset/CoderResult$Cache;


# instance fields
.field private final length:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Ljava/nio/charset/CoderResult;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/charset/CoderResult;->-assertionsDisabled:Z

    .line 94
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "UNDERFLOW"

    aput-object v1, v0, v3

    const-string/jumbo v1, "OVERFLOW"

    aput-object v1, v0, v4

    const-string/jumbo v1, "MALFORMED"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "UNMAPPABLE"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 93
    sput-object v0, Ljava/nio/charset/CoderResult;->names:[Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/nio/charset/CoderResult;

    invoke-direct {v0, v3, v3}, Ljava/nio/charset/CoderResult;-><init>(II)V

    .line 184
    sput-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 192
    new-instance v0, Ljava/nio/charset/CoderResult;

    invoke-direct {v0, v4, v3}, Ljava/nio/charset/CoderResult;-><init>(II)V

    .line 191
    sput-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 221
    new-instance v0, Ljava/nio/charset/CoderResult$1;

    invoke-direct {v0}, Ljava/nio/charset/CoderResult$1;-><init>()V

    .line 220
    sput-object v0, Ljava/nio/charset/CoderResult;->malformedCache:Ljava/nio/charset/CoderResult$Cache;

    .line 240
    new-instance v0, Ljava/nio/charset/CoderResult$2;

    invoke-direct {v0}, Ljava/nio/charset/CoderResult$2;-><init>()V

    .line 239
    sput-object v0, Ljava/nio/charset/CoderResult;->unmappableCache:Ljava/nio/charset/CoderResult$Cache;

    .line 85
    return-void
.end method

.method private constructor <init>(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "length"    # I

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Ljava/nio/charset/CoderResult;->type:I

    .line 101
    iput p2, p0, Ljava/nio/charset/CoderResult;->length:I

    .line 102
    return-void
.end method

.method synthetic constructor <init>(IILjava/nio/charset/CoderResult;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "length"    # I
    .param p3, "-this2"    # Ljava/nio/charset/CoderResult;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/nio/charset/CoderResult;-><init>(II)V

    return-void
.end method

.method public static malformedForLength(I)Ljava/nio/charset/CoderResult;
    .registers 2
    .param p0, "length"    # I

    .prologue
    .line 236
    sget-object v0, Ljava/nio/charset/CoderResult;->malformedCache:Ljava/nio/charset/CoderResult$Cache;

    invoke-static {v0, p0}, Ljava/nio/charset/CoderResult$Cache;->-wrap0(Ljava/nio/charset/CoderResult$Cache;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public static unmappableForLength(I)Ljava/nio/charset/CoderResult;
    .registers 2
    .param p0, "length"    # I

    .prologue
    .line 255
    sget-object v0, Ljava/nio/charset/CoderResult;->unmappableCache:Ljava/nio/charset/CoderResult$Cache;

    invoke-static {v0, p0}, Ljava/nio/charset/CoderResult$Cache;->-wrap0(Ljava/nio/charset/CoderResult$Cache;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isError()Z
    .registers 3

    .prologue
    .line 139
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isMalformed()Z
    .registers 3

    .prologue
    .line 149
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isOverflow()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 129
    iget v1, p0, Ljava/nio/charset/CoderResult;->type:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isUnderflow()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 120
    iget v1, p0, Ljava/nio/charset/CoderResult;->type:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public isUnmappable()Z
    .registers 3

    .prologue
    .line 160
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public length()I
    .registers 2

    .prologue
    .line 174
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-nez v0, :cond_c

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 176
    :cond_c
    iget v0, p0, Ljava/nio/charset/CoderResult;->length:I

    return v0
.end method

.method public throwException()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 278
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    packed-switch v0, :pswitch_data_2c

    .line 284
    sget-boolean v0, Ljava/nio/charset/CoderResult;->-assertionsDisabled:Z

    if-nez v0, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 279
    :pswitch_f
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 280
    :pswitch_15
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 281
    :pswitch_1b
    new-instance v0, Ljava/nio/charset/MalformedInputException;

    iget v1, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v0

    .line 282
    :pswitch_23
    new-instance v0, Ljava/nio/charset/UnmappableCharacterException;

    iget v1, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-direct {v0, v1}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v0

    .line 286
    :cond_2b
    return-void

    .line 278
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_15
        :pswitch_1b
        :pswitch_23
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 110
    sget-object v1, Ljava/nio/charset/CoderResult;->names:[Ljava/lang/String;

    iget v2, p0, Ljava/nio/charset/CoderResult;->type:I

    aget-object v0, v1, v2

    .line 111
    .local v0, "nm":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "nm":Ljava/lang/String;
    :cond_2d
    return-object v0
.end method
