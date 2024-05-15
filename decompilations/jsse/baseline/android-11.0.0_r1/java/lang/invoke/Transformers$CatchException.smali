.class public Ljava/lang/invoke/Transformers$CatchException;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CatchException"
.end annotation


# instance fields
.field private final greylist-max-o exType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final greylist-max-o handler:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o handlerArgsRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;)V
    .registers 7
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "handler"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "Ljava/lang/invoke/MethodHandle;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 157
    .local p3, "exType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 159
    iput-object p1, p0, Ljava/lang/invoke/Transformers$CatchException;->target:Ljava/lang/invoke/MethodHandle;

    .line 160
    iput-object p2, p0, Ljava/lang/invoke/Transformers$CatchException;->handler:Ljava/lang/invoke/MethodHandle;

    .line 161
    iput-object p3, p0, Ljava/lang/invoke/Transformers$CatchException;->exType:Ljava/lang/Class;

    .line 166
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 167
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 166
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$CatchException;->handlerArgsRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 168
    return-void
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 7
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 173
    :try_start_0
    iget-object v0, p0, Ljava/lang/invoke/Transformers$CatchException;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v0, p1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    .line 196
    goto :goto_2e

    .line 174
    :catchall_7
    move-exception v0

    .line 175
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/invoke/Transformers$CatchException;->exType:Ljava/lang/Class;

    if-ne v1, v2, :cond_2f

    .line 178
    iget-object v1, p0, Ljava/lang/invoke/Transformers$CatchException;->handler:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v1

    .line 181
    .local v1, "fallback":Ldalvik/system/EmulatedStackFrame;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ldalvik/system/EmulatedStackFrame;->setReference(ILjava/lang/Object;)V

    .line 186
    iget-object v3, p0, Ljava/lang/invoke/Transformers$CatchException;->handlerArgsRange:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v3, v4, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 190
    iget-object v2, p0, Ljava/lang/invoke/Transformers$CatchException;->handler:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v2, v1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 191
    invoke-virtual {v1, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 192
    .end local v1    # "fallback":Ldalvik/system/EmulatedStackFrame;
    nop

    .line 197
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_2e
    return-void

    .line 194
    .restart local v0    # "th":Ljava/lang/Throwable;
    :cond_2f
    throw v0
.end method
