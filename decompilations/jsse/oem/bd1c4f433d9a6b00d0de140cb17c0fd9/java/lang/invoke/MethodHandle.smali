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
.field static final synthetic -assertionsDisabled:Z

.field public static final IGET:I = 0x7

.field public static final INVOKE_CALLSITE_TRANSFORM:I = 0x6

.field public static final INVOKE_DIRECT:I = 0x2

.field public static final INVOKE_INTERFACE:I = 0x4

.field public static final INVOKE_STATIC:I = 0x3

.field public static final INVOKE_SUPER:I = 0x1

.field public static final INVOKE_TRANSFORM:I = 0x5

.field public static final INVOKE_VIRTUAL:I = 0x0

.field public static final IPUT:I = 0x8

.field public static final SGET:I = 0x9

.field public static final SPUT:I = 0xa


# instance fields
.field protected final artFieldOrMethod:J

.field private cachedSpreadInvoker:Ljava/lang/invoke/MethodHandle;

.field protected final handleKind:I

.field private nominalType:Ljava/lang/invoke/MethodType;

.field private final type:Ljava/lang/invoke/MethodType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/lang/invoke/MethodHandle;->-assertionsDisabled:Z

    .line 421
    return-void
.end method

.method protected constructor <init>(JILjava/lang/invoke/MethodType;)V
    .registers 6
    .param p1, "artFieldOrMethod"    # J
    .param p3, "handleKind"    # I
    .param p4, "type"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-wide p1, p0, Ljava/lang/invoke/MethodHandle;->artFieldOrMethod:J

    .line 504
    iput p3, p0, Ljava/lang/invoke/MethodHandle;->handleKind:I

    .line 505
    iput-object p4, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    .line 506
    return-void
.end method

.method private asSpreaderChecks(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;
    .registers 13
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .line 889
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/invoke/MethodHandle;->spreadArrayChecks(Ljava/lang/Class;I)V

    .line 890
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v5

    .line 891
    .local v5, "nargs":I
    if-lt v5, p2, :cond_f

    if-gez p2, :cond_17

    .line 892
    :cond_f
    const-string/jumbo v8, "bad spread array length"

    invoke-static {v8}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .line 893
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 894
    .local v0, "arrayElement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 895
    .local v4, "mtype":Ljava/lang/invoke/MethodType;
    const/4 v3, 0x1

    .local v3, "match":Z
    const/4 v1, 0x0

    .line 896
    .local v1, "fail":Z
    sub-int v2, v5, p2

    .local v2, "i":I
    :goto_23
    if-ge v2, v5, :cond_33

    .line 897
    invoke-virtual {v4, v2}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v7

    .line 898
    .local v7, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v7, v0, :cond_36

    .line 899
    const/4 v3, 0x0

    .line 900
    invoke-static {v0, v7}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_36

    .line 901
    const/4 v1, 0x1

    .line 906
    .end local v7    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_33
    if-eqz v3, :cond_39

    return-object v4

    .line 896
    .restart local v7    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 907
    .end local v7    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_39
    invoke-virtual {v4, p1, p2}, Ljava/lang/invoke/MethodType;->asSpreaderType(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 908
    .local v6, "needType":Ljava/lang/invoke/MethodType;
    if-nez v1, :cond_40

    return-object v6

    .line 910
    :cond_40
    invoke-virtual {p0, v6}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 911
    const-string/jumbo v8, "should not return"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/invoke/MethodHandleStatics;->newInternalError(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/InternalError;

    move-result-object v8

    throw v8
.end method

.method private spreadArrayChecks(Ljava/lang/Class;I)V
    .registers 6
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 915
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 916
    .local v0, "arrayElement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_e

    .line 917
    const-string/jumbo v1, "not an array type"

    invoke-static {v1, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 918
    :cond_e
    and-int/lit8 v1, p2, 0x7f

    if-eq v1, p2, :cond_44

    .line 919
    and-int/lit16 v1, p2, 0xff

    if-eq v1, p2, :cond_22

    .line 920
    const-string/jumbo v1, "array length is not legal"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 921
    :cond_22
    sget-boolean v1, Ljava/lang/invoke/MethodHandle;->-assertionsDisabled:Z

    if-nez v1, :cond_30

    const/16 v1, 0x80

    if-ge p2, v1, :cond_30

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 922
    :cond_30
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_38

    .line 923
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_44

    .line 924
    :cond_38
    const-string/jumbo v1, "array length is not legal for long[] or double[]"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 926
    :cond_44
    return-void
.end method

.method private transformInternal(Ldalvik/system/EmulatedStackFrame;)V
    .registers 2
    .param p1, "arguments"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1338
    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodHandle;->transform(Ldalvik/system/EmulatedStackFrame;)V

    .line 1339
    return-void
.end method


# virtual methods
.method public asCollector(Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .prologue
    .line 1000
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Ljava/lang/invoke/MethodHandle;->asCollectorChecks(Ljava/lang/Class;I)Z

    .line 1002
    new-instance v0, Ljava/lang/invoke/Transformers$Collector;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/invoke/Transformers$Collector;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;I)V

    return-object v0
.end method

.method asCollectorChecks(Ljava/lang/Class;I)Z
    .registers 8
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 1010
    invoke-direct {p0, p1, p2}, Ljava/lang/invoke/MethodHandle;->spreadArrayChecks(Ljava/lang/Class;I)V

    .line 1011
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    .line 1012
    .local v1, "nargs":I
    if-eqz v1, :cond_23

    .line 1013
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v0

    .line 1014
    .local v0, "lastParam":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v0, p1, :cond_1c

    const/4 v2, 0x1

    return v2

    .line 1015
    :cond_1c
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_23

    return v4

    .line 1017
    .end local v0    # "lastParam":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_23
    const-string/jumbo v2, "array type not assignable to trailing argument"

    invoke-static {v2, p0, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public asFixedArity()Ljava/lang/invoke/MethodHandle;
    .registers 3

    .prologue
    .line 1243
    move-object v0, p0

    .line 1244
    .local v0, "mh":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->isVarargsCollector()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1245
    check-cast p0, Ljava/lang/invoke/Transformers$VarargsCollector;

    .end local p0    # "this":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 1247
    :cond_d
    sget-boolean v1, Ljava/lang/invoke/MethodHandle;->-assertionsDisabled:Z

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->isVarargsCollector()Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1248
    :cond_1d
    return-object v0
.end method

.method public asSpreader(Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .prologue
    .line 874
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/invoke/MethodHandle;->asSpreaderChecks(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 876
    .local v2, "postSpreadType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v3

    .line 878
    .local v3, "targetParamCount":I
    sub-int v4, v3, p2

    .line 877
    invoke-virtual {v2, v4, v3}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 879
    .local v1, "dropArrayArgs":Ljava/lang/invoke/MethodType;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/invoke/MethodType;->appendParameterTypes([Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 881
    .local v0, "adapterType":Ljava/lang/invoke/MethodType;
    new-instance v4, Ljava/lang/invoke/Transformers$Spreader;

    invoke-direct {v4, p0, v0, p2}, Ljava/lang/invoke/Transformers$Spreader;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;I)V

    return-object v4
.end method

.method public asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 6
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 771
    iget-object v1, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    if-ne p1, v1, :cond_5

    .line 772
    return-object p0

    .line 775
    :cond_5
    iget-object v1, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v1, p1}, Ljava/lang/invoke/MethodType;->isConvertibleTo(Ljava/lang/invoke/MethodType;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 776
    new-instance v1, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot convert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 779
    :cond_32
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->duplicate()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 780
    .local v0, "mh":Ljava/lang/invoke/MethodHandle;
    iput-object p1, v0, Ljava/lang/invoke/MethodHandle;->nominalType:Ljava/lang/invoke/MethodType;

    .line 781
    return-object v0
.end method

.method public asVarargsCollector(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .prologue
    .line 1171
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getClass()Ljava/lang/Class;

    .line 1172
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/lang/invoke/MethodHandle;->asCollectorChecks(Ljava/lang/Class;I)Z

    move-result v0

    .line 1173
    .local v0, "lastMatch":Z
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->isVarargsCollector()Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v0, :cond_11

    .line 1174
    return-object p0

    .line 1176
    :cond_11
    new-instance v1, Ljava/lang/invoke/Transformers$VarargsCollector;

    invoke-direct {v1, p0}, Ljava/lang/invoke/Transformers$VarargsCollector;-><init>(Ljava/lang/invoke/MethodHandle;)V

    return-object v1
.end method

.method public bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 1279
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->leadingReferenceParameter()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1281
    new-instance v0, Ljava/lang/invoke/Transformers$BindTo;

    invoke-direct {v0, p0, p1}, Ljava/lang/invoke/Transformers$BindTo;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected duplicate()Ljava/lang/invoke/MethodHandle;
    .registers 4

    .prologue
    .line 1322
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodHandle;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v1

    .line 1323
    :catch_7
    move-exception v0

    .line 1324
    .local v0, "cnse":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Subclass of Transformer is not cloneable"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getHandleKind()I
    .registers 2

    .prologue
    .line 1307
    iget v0, p0, Ljava/lang/invoke/MethodHandle;->handleKind:I

    return v0
.end method

.method public final varargs native invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native invokeExact([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public invokeWithArguments(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 667
    .local p1, "arguments":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 636
    const/4 v0, 0x0

    .line 637
    .local v0, "invoker":Ljava/lang/invoke/MethodHandle;
    monitor-enter p0

    .line 638
    :try_start_2
    iget-object v1, p0, Ljava/lang/invoke/MethodHandle;->cachedSpreadInvoker:Ljava/lang/invoke/MethodHandle;

    if-nez v1, :cond_11

    .line 639
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodHandles;->spreadInvoker(Ljava/lang/invoke/MethodType;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/MethodHandle;->cachedSpreadInvoker:Ljava/lang/invoke/MethodHandle;

    .line 642
    :cond_11
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->cachedSpreadInvoker:Ljava/lang/invoke/MethodHandle;
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_1a

    .local v0, "invoker":Ljava/lang/invoke/MethodHandle;
    monitor-exit p0

    .line 645
    #unknown opcode: 0xfa
    nop

    #unknown opcode: 0x7a
    nop

    cmpg-double p1, p177, p0

    move-result-object v1

    return-object v1

    .line 637
    .local v0, "invoker":Ljava/lang/invoke/MethodHandle;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isVarargsCollector()Z
    .registers 2

    .prologue
    .line 1195
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MethodHandle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 4
    .param p1, "arguments"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1312
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "MethodHandle.transform should never be called."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public type()Ljava/lang/invoke/MethodType;
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->nominalType:Ljava/lang/invoke/MethodType;

    if-eqz v0, :cond_7

    .line 515
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->nominalType:Ljava/lang/invoke/MethodType;

    return-object v0

    .line 518
    :cond_7
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    return-object v0
.end method
