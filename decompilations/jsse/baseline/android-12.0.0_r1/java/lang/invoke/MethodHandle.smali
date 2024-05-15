.class public abstract Ljava/lang/invoke/MethodHandle;
.super Ljava/lang/Object;
.source "MethodHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final greylist-max-o IGET:I = 0x9

.field public static final greylist-max-o INVOKE_CALLSITE_TRANSFORM:I = 0x6

.field public static final greylist-max-o INVOKE_DIRECT:I = 0x2

.field public static final greylist-max-o INVOKE_INTERFACE:I = 0x4

.field public static final greylist-max-o INVOKE_STATIC:I = 0x3

.field public static final greylist-max-o INVOKE_SUPER:I = 0x1

.field public static final greylist-max-o INVOKE_TRANSFORM:I = 0x5

.field public static final greylist-max-o INVOKE_VAR_HANDLE:I = 0x7

.field public static final greylist-max-o INVOKE_VAR_HANDLE_EXACT:I = 0x8

.field public static final greylist-max-o INVOKE_VIRTUAL:I = 0x0

.field public static final greylist-max-o IPUT:I = 0xa

.field public static final greylist-max-o SGET:I = 0xb

.field public static final greylist-max-o SPUT:I = 0xc


# instance fields
.field protected final greylist-max-o artFieldOrMethod:J

.field private greylist-max-o cachedSpreadInvoker:Ljava/lang/invoke/MethodHandle;

.field protected final greylist-max-o handleKind:I

.field private greylist-max-o nominalType:Ljava/lang/invoke/MethodType;

.field private final greylist-max-o type:Ljava/lang/invoke/MethodType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 421
    return-void
.end method

.method protected constructor greylist-max-o <init>(JILjava/lang/invoke/MethodType;)V
    .registers 5
    .param p1, "artFieldOrMethod"    # J
    .param p3, "handleKind"    # I
    .param p4, "type"    # Ljava/lang/invoke/MethodType;

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-wide p1, p0, Ljava/lang/invoke/MethodHandle;->artFieldOrMethod:J

    .line 514
    iput p3, p0, Ljava/lang/invoke/MethodHandle;->handleKind:I

    .line 515
    iput-object p4, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    .line 516
    return-void
.end method

.method private greylist-max-o asSpreaderChecks(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;
    .registers 11
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 1009
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/invoke/MethodHandle;->spreadArrayChecks(Ljava/lang/Class;I)V

    .line 1010
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    .line 1011
    .local v0, "nargs":I
    if-lt v0, p2, :cond_44

    if-ltz p2, :cond_44

    .line 1013
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1014
    .local v1, "arrayElement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 1015
    .local v2, "mtype":Ljava/lang/invoke/MethodType;
    const/4 v3, 0x1

    .local v3, "match":Z
    const/4 v4, 0x0

    .line 1016
    .local v4, "fail":Z
    sub-int v5, v0, p2

    .local v5, "i":I
    :goto_1b
    if-ge v5, v0, :cond_2f

    .line 1017
    invoke-virtual {v2, v5}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v6

    .line 1018
    .local v6, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v6, v1, :cond_2c

    .line 1019
    const/4 v3, 0x0

    .line 1020
    invoke-static {v1, v6}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 1021
    const/4 v4, 0x1

    .line 1022
    goto :goto_2f

    .line 1016
    .end local v6    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 1026
    .end local v5    # "i":I
    :cond_2f
    :goto_2f
    if-eqz v3, :cond_32

    return-object v2

    .line 1027
    :cond_32
    invoke-virtual {v2, p1, p2}, Ljava/lang/invoke/MethodType;->asSpreaderType(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 1028
    .local v5, "needType":Ljava/lang/invoke/MethodType;
    if-nez v4, :cond_39

    return-object v5

    .line 1030
    :cond_39
    invoke-virtual {p0, v5}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 1031
    const/4 v6, 0x0

    const-string v7, "should not return"

    invoke-static {v7, v6}, Ljava/lang/invoke/MethodHandleStatics;->newInternalError(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/InternalError;

    move-result-object v6

    throw v6

    .line 1012
    .end local v1    # "arrayElement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "mtype":Ljava/lang/invoke/MethodType;
    .end local v3    # "match":Z
    .end local v4    # "fail":Z
    .end local v5    # "needType":Ljava/lang/invoke/MethodType;
    :cond_44
    const-string v1, "bad spread array length"

    invoke-static {v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o spreadArrayChecks(Ljava/lang/Class;I)V
    .registers 6
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 1035
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1036
    .local v0, "arrayElement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2f

    .line 1038
    and-int/lit8 v1, p2, 0x7f

    if-eq v1, p2, :cond_2e

    .line 1039
    and-int/lit16 v1, p2, 0xff

    if-ne v1, p2, :cond_23

    .line 1041
    nop

    .line 1042
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_18

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_18

    goto :goto_2e

    .line 1044
    :cond_18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "array length is not legal for long[] or double[]"

    invoke-static {v2, v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1040
    :cond_23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "array length is not legal"

    invoke-static {v2, v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1046
    :cond_2e
    :goto_2e
    return-void

    .line 1037
    :cond_2f
    const-string v1, "not an array type"

    invoke-static {v1, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o transformInternal(Ldalvik/system/EmulatedStackFrame;)V
    .registers 2
    .param p1, "arguments"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1492
    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodHandle;->transform(Ldalvik/system/EmulatedStackFrame;)V

    .line 1493
    return-void
.end method


# virtual methods
.method public whitelist test-api asCollector(Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 1120
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Ljava/lang/invoke/MethodHandle;->asCollectorChecks(Ljava/lang/Class;I)Z

    .line 1134
    new-instance v0, Ljava/lang/invoke/Transformers$Collector;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/invoke/Transformers$Collector;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;I)V

    return-object v0
.end method

.method greylist-max-o asCollectorChecks(Ljava/lang/Class;I)Z
    .registers 6
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)Z"
        }
    .end annotation

    .line 1143
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/invoke/MethodHandle;->spreadArrayChecks(Ljava/lang/Class;I)V

    .line 1144
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    .line 1145
    .local v0, "nargs":I
    if-eqz v0, :cond_23

    .line 1146
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v1

    .line 1147
    .local v1, "lastParam":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v1, p1, :cond_1b

    const/4 v2, 0x1

    return v2

    .line 1148
    :cond_1b
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x0

    return v2

    .line 1150
    .end local v1    # "lastParam":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_23
    const-string v1, "array type not assignable to trailing argument"

    invoke-static {v1, p0, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api asFixedArity()Ljava/lang/invoke/MethodHandle;
    .registers 3

    .line 1380
    move-object v0, p0

    .line 1381
    .local v0, "mh":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->isVarargsCollector()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1382
    move-object v1, v0

    check-cast v1, Ljava/lang/invoke/Transformers$VarargsCollector;

    invoke-virtual {v1}, Ljava/lang/invoke/Transformers$VarargsCollector;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 1384
    :cond_e
    nop

    .line 1385
    return-object v0
.end method

.method public whitelist test-api asSpreader(Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 984
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/invoke/MethodHandle;->asSpreaderChecks(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 995
    .local v0, "postSpreadType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    .line 996
    .local v1, "targetParamCount":I
    sub-int v2, v1, p2

    invoke-virtual {v0, v2, v1}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 998
    .local v2, "dropArrayArgs":Ljava/lang/invoke/MethodType;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/invoke/MethodType;->appendParameterTypes([Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 1000
    .local v3, "adapterType":Ljava/lang/invoke/MethodType;
    new-instance v4, Ljava/lang/invoke/Transformers$Spreader;

    invoke-direct {v4, p0, v3, p2}, Ljava/lang/invoke/Transformers$Spreader;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;I)V

    return-object v4
.end method

.method public whitelist test-api asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .line 857
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    if-ne p1, v0, :cond_5

    .line 858
    return-object p0

    .line 868
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodHandle;->asTypeUncached(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method blacklist asTypeUncached(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .line 884
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0, p1}, Ljava/lang/invoke/MethodType;->isConvertibleTo(Ljava/lang/invoke/MethodType;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 888
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->duplicate()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 889
    .local v0, "mh":Ljava/lang/invoke/MethodHandle;
    iput-object p1, v0, Ljava/lang/invoke/MethodHandle;->nominalType:Ljava/lang/invoke/MethodType;

    .line 890
    return-object v0

    .line 885
    .end local v0    # "mh":Ljava/lang/invoke/MethodHandle;
    :cond_f
    new-instance v0, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api asVarargsCollector(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 1304
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1305
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/invoke/MethodHandle;->asCollectorChecks(Ljava/lang/Class;I)Z

    move-result v0

    .line 1306
    .local v0, "lastMatch":Z
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->isVarargsCollector()Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v0, :cond_11

    .line 1307
    return-object p0

    .line 1310
    :cond_11
    new-instance v1, Ljava/lang/invoke/Transformers$VarargsCollector;

    invoke-direct {v1, p0}, Ljava/lang/invoke/Transformers$VarargsCollector;-><init>(Ljava/lang/invoke/MethodHandle;)V

    return-object v1
.end method

.method public whitelist test-api bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p1, "x"    # Ljava/lang/Object;

    .line 1417
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->leadingReferenceParameter()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1420
    new-instance v0, Ljava/lang/invoke/Transformers$BindTo;

    invoke-direct {v0, p0, p1}, Ljava/lang/invoke/Transformers$BindTo;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected greylist-max-o duplicate()Ljava/lang/invoke/MethodHandle;
    .registers 4

    .line 1477
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1478
    :catch_7
    move-exception v0

    .line 1479
    .local v0, "cnse":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Subclass of Transformer is not cloneable"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public greylist-max-o getHandleKind()I
    .registers 2

    .line 1462
    iget v0, p0, Ljava/lang/invoke/MethodHandle;->handleKind:I

    return v0
.end method

.method public final varargs native whitelist test-api invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api invokeExact([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public whitelist test-api invokeWithArguments(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 753
    .local p1, "arguments":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 721
    const/4 v0, 0x0

    .line 722
    .local v0, "invoker":Ljava/lang/invoke/MethodHandle;
    monitor-enter p0

    .line 723
    :try_start_2
    iget-object v1, p0, Ljava/lang/invoke/MethodHandle;->cachedSpreadInvoker:Ljava/lang/invoke/MethodHandle;

    if-nez v1, :cond_11

    .line 724
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodHandles;->spreadInvoker(Ljava/lang/invoke/MethodType;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/MethodHandle;->cachedSpreadInvoker:Ljava/lang/invoke/MethodHandle;

    .line 727
    :cond_11
    iget-object v1, p0, Ljava/lang/invoke/MethodHandle;->cachedSpreadInvoker:Ljava/lang/invoke/MethodHandle;

    move-object v0, v1

    .line 728
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_1b

    .line 730
    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 728
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist test-api isVarargsCollector()Z
    .registers 2

    .line 1329
    const/4 v0, 0x0

    return v0
.end method

.method blacklist standardString()Ljava/lang/String;
    .registers 3

    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodHandle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1442
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->standardString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 4
    .param p1, "arguments"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1467
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "MethodHandle.transform should never be called."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist test-api type()Ljava/lang/invoke/MethodType;
    .registers 2

    .line 526
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->nominalType:Ljava/lang/invoke/MethodType;

    if-eqz v0, :cond_5

    .line 527
    return-object v0

    .line 530
    :cond_5
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    return-object v0
.end method
