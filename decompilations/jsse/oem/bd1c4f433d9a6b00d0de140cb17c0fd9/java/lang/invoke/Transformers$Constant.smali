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
.field private asDouble:D

.field private asFloat:F

.field private asInt:I

.field private asLong:J

.field private asReference:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private typeChar:C


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 336
    iput-object p1, p0, Ljava/lang/invoke/Transformers$Constant;->type:Ljava/lang/Class;

    .line 338
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_16

    .line 339
    iput-object p2, p0, Ljava/lang/invoke/Transformers$Constant;->asReference:Ljava/lang/Object;

    .line 340
    const/16 v0, 0x4c

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    .line 368
    .end local p2    # "value":Ljava/lang/Object;
    :goto_15
    return-void

    .line 341
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_16
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_27

    .line 342
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    .line 343
    const/16 v0, 0x49

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_15

    .line 344
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_27
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_38

    .line 345
    check-cast p2, Ljava/lang/Character;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    .line 346
    const/16 v0, 0x43

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_15

    .line 347
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_38
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_49

    .line 348
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    .line 349
    const/16 v0, 0x53

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_15

    .line 350
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_49
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5a

    .line 351
    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    .line 352
    const/16 v0, 0x42

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_15

    .line 353
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_70

    .line 354
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6e

    const/4 v0, 0x1

    :goto_67
    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    .line 355
    const/16 v0, 0x5a

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_15

    .line 354
    :cond_6e
    const/4 v0, 0x0

    goto :goto_67

    .line 356
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_70
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_81

    .line 357
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/invoke/Transformers$Constant;->asLong:J

    .line 358
    const/16 v0, 0x4a

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_15

    .line 359
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_81
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_92

    .line 360
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asFloat:F

    .line 361
    const/16 v0, 0x46

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_15

    .line 362
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_92
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a4

    .line 363
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/invoke/Transformers$Constant;->asDouble:D

    .line 364
    const/16 v0, 0x44

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto/16 :goto_15

    .line 366
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 6
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 372
    new-instance v0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 373
    .local v0, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 374
    invoke-virtual {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->makeReturnValueAccessor()V

    .line 376
    iget-char v2, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    sparse-switch v2, :sswitch_data_6c

    .line 387
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected typeChar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 377
    :sswitch_2d
    iget-object v1, p0, Ljava/lang/invoke/Transformers$Constant;->asReference:Ljava/lang/Object;

    iget-object v2, p0, Ljava/lang/invoke/Transformers$Constant;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 389
    :goto_34
    return-void

    .line 378
    :sswitch_35
    iget v1, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_34

    .line 379
    :sswitch_3b
    iget v1, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_34

    .line 380
    :sswitch_42
    iget v1, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_34

    .line 381
    :sswitch_49
    iget v1, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_34

    .line 382
    :sswitch_50
    iget v2, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    if-ne v2, v1, :cond_58

    :goto_54
    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_34

    :cond_58
    const/4 v1, 0x0

    goto :goto_54

    .line 383
    :sswitch_5a
    iget-wide v2, p0, Ljava/lang/invoke/Transformers$Constant;->asLong:J

    invoke-virtual {v0, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_34

    .line 384
    :sswitch_60
    iget v1, p0, Ljava/lang/invoke/Transformers$Constant;->asFloat:F

    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_34

    .line 385
    :sswitch_66
    iget-wide v2, p0, Ljava/lang/invoke/Transformers$Constant;->asDouble:D

    invoke-virtual {v0, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_34

    .line 376
    :sswitch_data_6c
    .sparse-switch
        0x42 -> :sswitch_49
        0x43 -> :sswitch_3b
        0x44 -> :sswitch_66
        0x46 -> :sswitch_60
        0x49 -> :sswitch_35
        0x4a -> :sswitch_5a
        0x4c -> :sswitch_2d
        0x53 -> :sswitch_42
        0x5a -> :sswitch_50
    .end sparse-switch
.end method
