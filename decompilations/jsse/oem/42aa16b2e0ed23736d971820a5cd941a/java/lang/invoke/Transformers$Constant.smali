.class public Ljava/lang/invoke/Transformers$Constant;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constant"
.end annotation


# instance fields
.field private greylist-max-o asDouble:D

.field private greylist-max-o asFloat:F

.field private greylist-max-o asInt:I

.field private greylist-max-o asLong:J

.field private greylist-max-o asReference:Ljava/lang/Object;

.field private final greylist-max-o type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private greylist-max-o typeChar:C


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 336
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 337
    iput-object p1, p0, Ljava/lang/invoke/Transformers$Constant;->type:Ljava/lang/Class;

    .line 339
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_17

    .line 340
    iput-object p2, p0, Ljava/lang/invoke/Transformers$Constant;->asReference:Ljava/lang/Object;

    .line 341
    const/16 v0, 0x4c

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto/16 :goto_a7

    .line 342
    :cond_17
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2a

    .line 343
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    .line 344
    const/16 v0, 0x49

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto/16 :goto_a7

    .line 345
    :cond_2a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3c

    .line 346
    move-object v0, p2

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    .line 347
    const/16 v0, 0x43

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_a7

    .line 348
    :cond_3c
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4e

    .line 349
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    .line 350
    const/16 v0, 0x53

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_a7

    .line 351
    :cond_4e
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_60

    .line 352
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    .line 353
    const/16 v0, 0x42

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_a7

    .line 354
    :cond_60
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_72

    .line 355
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    .line 356
    const/16 v0, 0x5a

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_a7

    .line 357
    :cond_72
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_84

    .line 358
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/invoke/Transformers$Constant;->asLong:J

    .line 359
    const/16 v0, 0x4a

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_a7

    .line 360
    :cond_84
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_96

    .line 361
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asFloat:F

    .line 362
    const/16 v0, 0x46

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_a7

    .line 363
    :cond_96
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a8

    .line 364
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/invoke/Transformers$Constant;->asDouble:D

    .line 365
    const/16 v0, 0x44

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    .line 369
    :goto_a7
    return-void

    .line 367
    :cond_a8
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 6
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 373
    new-instance v0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 374
    .local v0, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 375
    invoke-virtual {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->makeReturnValueAccessor()V

    .line 377
    iget-char v1, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    const/16 v2, 0x46

    if-eq v1, v2, :cond_7b

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_73

    const/16 v2, 0x53

    if-eq v1, v2, :cond_6c

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_61

    const/16 v2, 0x49

    if-eq v1, v2, :cond_5b

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_55

    packed-switch v1, :pswitch_data_82

    .line 388
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected typeChar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 386
    :pswitch_41
    iget-wide v1, p0, Ljava/lang/invoke/Transformers$Constant;->asDouble:D

    invoke-virtual {v0, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_80

    .line 380
    :pswitch_47
    iget v1, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_80

    .line 382
    :pswitch_4e
    iget v1, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_80

    .line 384
    :cond_55
    iget-wide v1, p0, Ljava/lang/invoke/Transformers$Constant;->asLong:J

    invoke-virtual {v0, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_80

    .line 379
    :cond_5b
    iget v1, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_80

    .line 383
    :cond_61
    iget v1, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_67

    goto :goto_68

    :cond_67
    const/4 v2, 0x0

    :goto_68
    invoke-virtual {v0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_80

    .line 381
    :cond_6c
    iget v1, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_80

    .line 378
    :cond_73
    iget-object v1, p0, Ljava/lang/invoke/Transformers$Constant;->asReference:Ljava/lang/Object;

    iget-object v2, p0, Ljava/lang/invoke/Transformers$Constant;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_80

    .line 385
    :cond_7b
    iget v1, p0, Ljava/lang/invoke/Transformers$Constant;->asFloat:F

    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 390
    :goto_80
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x42
        :pswitch_4e
        :pswitch_47
        :pswitch_41
    .end packed-switch
.end method
