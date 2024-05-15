.class Ljava/lang/invoke/Transformers$Invoker;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Invoker"
.end annotation


# instance fields
.field private final greylist-max-o copyRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o isExactInvoker:Z

.field private final greylist-max-o targetType:Ljava/lang/invoke/MethodType;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodType;Z)V
    .registers 7
    .param p1, "targetType"    # Ljava/lang/invoke/MethodType;
    .param p2, "isExactInvoker"    # Z

    .line 1003
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/invoke/MethodHandle;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v3, v1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1004
    iput-object p1, p0, Ljava/lang/invoke/Transformers$Invoker;->targetType:Ljava/lang/invoke/MethodType;

    .line 1005
    iput-boolean p2, p0, Ljava/lang/invoke/Transformers$Invoker;->isExactInvoker:Z

    .line 1006
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Invoker;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Invoker;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    invoke-static {v1, v0, v2}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Invoker;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1007
    return-void
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

    .line 1013
    iget-boolean v0, p0, Ljava/lang/invoke/Transformers$Invoker;->isExactInvoker:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 1016
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame;->getCallsiteType()Ljava/lang/invoke/MethodType;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1017
    .local v0, "callType":Ljava/lang/invoke/MethodType;
    iget-object v2, p0, Ljava/lang/invoke/Transformers$Invoker;->targetType:Ljava/lang/invoke/MethodType;

    invoke-virtual {v2, v0}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_38

    .line 1018
    :cond_17
    new-instance v1, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong type, Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/lang/invoke/Transformers$Invoker;->targetType:Ljava/lang/invoke/MethodType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1024
    .end local v0    # "callType":Ljava/lang/invoke/MethodType;
    :cond_38
    :goto_38
    const-class v0, Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p1, v1, v0}, Ldalvik/system/EmulatedStackFrame;->getReference(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;

    .line 1027
    .local v0, "target":Ljava/lang/invoke/MethodHandle;
    iget-object v2, p0, Ljava/lang/invoke/Transformers$Invoker;->targetType:Ljava/lang/invoke/MethodType;

    invoke-static {v2}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v2

    .line 1028
    .local v2, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Invoker;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v2, v3, v1, v1}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1031
    invoke-polymorphic {v0, v2}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 1032
    invoke-virtual {v2, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 1033
    return-void
.end method
