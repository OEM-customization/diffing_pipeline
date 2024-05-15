.class Ljava/lang/invoke/Transformers$FilterArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterArguments"
.end annotation


# instance fields
.field private final filters:[Ljava/lang/invoke/MethodHandle;

.field private final pos:I

.field private final target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor <init>(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)V
    .registers 5
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "pos"    # I
    .param p3, "filters"    # [Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 1459
    invoke-static {p1, p2, p3}, Ljava/lang/invoke/Transformers$FilterArguments;->deriveType(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1461
    iput-object p1, p0, Ljava/lang/invoke/Transformers$FilterArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 1462
    iput p2, p0, Ljava/lang/invoke/Transformers$FilterArguments;->pos:I

    .line 1463
    iput-object p3, p0, Ljava/lang/invoke/Transformers$FilterArguments;->filters:[Ljava/lang/invoke/MethodHandle;

    .line 1465
    return-void
.end method

.method private static deriveType(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;
    .registers 7
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filters"    # [Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 1468
    array-length v2, p2

    new-array v0, v2, [Ljava/lang/Class;

    .line 1469
    .local v0, "filterArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_17

    .line 1470
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1469
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1473
    :cond_17
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    array-length v3, p2

    add-int/2addr v3, p1

    invoke-virtual {v2, p1, v3, v0}, Ljava/lang/invoke/MethodType;->replaceParameterTypes(II[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 14
    .param p1, "stackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1478
    new-instance v7, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1479
    .local v7, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v7, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1481
    iget-object v10, p0, Ljava/lang/invoke/Transformers$FilterArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v10}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v10

    invoke-static {v10}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v8

    .line 1482
    .local v8, "transformedFrame":Ldalvik/system/EmulatedStackFrame;
    new-instance v9, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1483
    .local v9, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v9, v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1485
    iget-object v10, p0, Ljava/lang/invoke/Transformers$FilterArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v10}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v6

    .line 1486
    .local v6, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    array-length v10, v6

    if-ge v4, v10, :cond_7b

    .line 1489
    aget-object v5, v6, v4

    .line 1491
    .local v5, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v10, p0, Ljava/lang/invoke/Transformers$FilterArguments;->pos:I

    if-ge v4, v10, :cond_64

    .line 1492
    const/4 v0, 0x0

    .line 1499
    :goto_2f
    if-eqz v0, :cond_77

    .line 1502
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v10

    invoke-static {v10}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v1

    .line 1505
    .local v1, "filterFrame":Ldalvik/system/EmulatedStackFrame;
    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1506
    .local v3, "filterWriter":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v3, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1507
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-static {v7, v3, v10}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1509
    #unknown opcode: 0xfa
    nop

    #unknown opcode: 0x7a
    nop

    return-wide v0

    sput-object p5, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    .line 1512
    aget-byte v0, p100, p4

    const-wide v1, 0x120119206e0002L

    .line 1513
    .local v2, "filterReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .line 1514
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->makeReturnValueAccessor()V

    .line 1515
    invoke-static {v2, v9, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1486
    .end local v1    # "filterFrame":Ldalvik/system/EmulatedStackFrame;
    .end local v2    # "filterReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .end local v3    # "filterWriter":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    :goto_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 1493
    :cond_64
    iget v10, p0, Ljava/lang/invoke/Transformers$FilterArguments;->pos:I

    iget-object v11, p0, Ljava/lang/invoke/Transformers$FilterArguments;->filters:[Ljava/lang/invoke/MethodHandle;

    array-length v11, v11

    add-int/2addr v10, v11

    if-lt v4, v10, :cond_6e

    .line 1494
    const/4 v0, 0x0

    .local v0, "filter":Ljava/lang/invoke/MethodHandle;
    goto :goto_2f

    .line 1496
    .end local v0    # "filter":Ljava/lang/invoke/MethodHandle;
    :cond_6e
    iget-object v10, p0, Ljava/lang/invoke/Transformers$FilterArguments;->filters:[Ljava/lang/invoke/MethodHandle;

    iget v11, p0, Ljava/lang/invoke/Transformers$FilterArguments;->pos:I

    sub-int v11, v4, v11

    aget-object v0, v10, v11

    .local v0, "filter":Ljava/lang/invoke/MethodHandle;
    goto :goto_2f

    .line 1519
    .end local v0    # "filter":Ljava/lang/invoke/MethodHandle;
    :cond_77
    invoke-static {v7, v9, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_61

    .line 1523
    .end local v5    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7b
    iget-object v10, p0, Ljava/lang/invoke/Transformers$FilterArguments;->target:Ljava/lang/invoke/MethodHandle;

    #unknown opcode: 0xfa
    nop

    #unknown opcode: 0x7a
    nop

    double-to-int v0, v0

    sput-object p5, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$1:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    .line 1524
    if-ne v1, v0, :cond_15a

    .line 1525
    return-void
    :cond_15a
.end method
