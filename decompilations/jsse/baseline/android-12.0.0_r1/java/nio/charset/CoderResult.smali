.class public Ljava/nio/charset/CoderResult;
.super Ljava/lang/Object;
.source "CoderResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/charset/CoderResult$Cache;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o CR_ERROR_MIN:I = 0x2

.field private static final greylist-max-o CR_MALFORMED:I = 0x2

.field private static final greylist-max-o CR_OVERFLOW:I = 0x1

.field private static final greylist-max-o CR_UNDERFLOW:I = 0x0

.field private static final greylist-max-o CR_UNMAPPABLE:I = 0x3

.field public static final whitelist test-api OVERFLOW:Ljava/nio/charset/CoderResult;

.field public static final whitelist test-api UNDERFLOW:Ljava/nio/charset/CoderResult;

.field private static greylist-max-o malformedCache:Ljava/nio/charset/CoderResult$Cache;

.field private static final greylist-max-o names:[Ljava/lang/String;

.field private static greylist-max-o unmappableCache:Ljava/nio/charset/CoderResult$Cache;


# instance fields
.field private final greylist-max-o length:I

.field private final greylist-max-o type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 85
    nop

    .line 93
    const-string v0, "UNDERFLOW"

    const-string v1, "OVERFLOW"

    const-string v2, "MALFORMED"

    const-string v3, "UNMAPPABLE"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/nio/charset/CoderResult;->names:[Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/nio/charset/CoderResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/nio/charset/CoderResult;-><init>(II)V

    sput-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 191
    new-instance v0, Ljava/nio/charset/CoderResult;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/nio/charset/CoderResult;-><init>(II)V

    sput-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 220
    new-instance v0, Ljava/nio/charset/CoderResult$1;

    invoke-direct {v0}, Ljava/nio/charset/CoderResult$1;-><init>()V

    sput-object v0, Ljava/nio/charset/CoderResult;->malformedCache:Ljava/nio/charset/CoderResult$Cache;

    .line 239
    new-instance v0, Ljava/nio/charset/CoderResult$2;

    invoke-direct {v0}, Ljava/nio/charset/CoderResult$2;-><init>()V

    sput-object v0, Ljava/nio/charset/CoderResult;->unmappableCache:Ljava/nio/charset/CoderResult$Cache;

    return-void
.end method

.method private constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "length"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Ljava/nio/charset/CoderResult;->type:I

    .line 101
    iput p2, p0, Ljava/nio/charset/CoderResult;->length:I

    .line 102
    return-void
.end method

.method synthetic constructor blacklist <init>(IILjava/nio/charset/CoderResult$1;)V
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/nio/charset/CoderResult$1;

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/nio/charset/CoderResult;-><init>(II)V

    return-void
.end method

.method public static whitelist test-api malformedForLength(I)Ljava/nio/charset/CoderResult;
    .registers 2
    .param p0, "length"    # I

    .line 236
    sget-object v0, Ljava/nio/charset/CoderResult;->malformedCache:Ljava/nio/charset/CoderResult$Cache;

    # invokes: Ljava/nio/charset/CoderResult$Cache;->get(I)Ljava/nio/charset/CoderResult;
    invoke-static {v0, p0}, Ljava/nio/charset/CoderResult$Cache;->access$200(Ljava/nio/charset/CoderResult$Cache;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api unmappableForLength(I)Ljava/nio/charset/CoderResult;
    .registers 2
    .param p0, "length"    # I

    .line 255
    sget-object v0, Ljava/nio/charset/CoderResult;->unmappableCache:Ljava/nio/charset/CoderResult$Cache;

    # invokes: Ljava/nio/charset/CoderResult$Cache;->get(I)Ljava/nio/charset/CoderResult;
    invoke-static {v0, p0}, Ljava/nio/charset/CoderResult$Cache;->access$200(Ljava/nio/charset/CoderResult$Cache;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api isError()Z
    .registers 3

    .line 139
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api isMalformed()Z
    .registers 3

    .line 149
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api isOverflow()Z
    .registers 3

    .line 129
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public whitelist test-api isUnderflow()Z
    .registers 2

    .line 120
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api isUnmappable()Z
    .registers 3

    .line 160
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 174
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 176
    iget v0, p0, Ljava/nio/charset/CoderResult;->length:I

    return v0

    .line 175
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api throwException()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 278
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    packed-switch v0, :pswitch_data_24

    .line 284
    goto :goto_22

    .line 282
    :pswitch_6
    new-instance v0, Ljava/nio/charset/UnmappableCharacterException;

    iget v1, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-direct {v0, v1}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v0

    .line 281
    :pswitch_e
    new-instance v0, Ljava/nio/charset/MalformedInputException;

    iget v1, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v0

    .line 280
    :pswitch_16
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 279
    :pswitch_1c
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 286
    :goto_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_16
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 110
    sget-object v0, Ljava/nio/charset/CoderResult;->names:[Ljava/lang/String;

    iget v1, p0, Ljava/nio/charset/CoderResult;->type:I

    aget-object v0, v0, v1

    .line 111
    .local v0, "nm":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_28
    move-object v1, v0

    :goto_29
    return-object v1
.end method
