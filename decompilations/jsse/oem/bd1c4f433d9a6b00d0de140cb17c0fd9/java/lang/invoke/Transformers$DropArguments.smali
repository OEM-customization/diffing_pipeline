.class public Ljava/lang/invoke/Transformers$DropArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropArguments"
.end annotation


# instance fields
.field private final delegate:Ljava/lang/invoke/MethodHandle;

.field private final range1:Ldalvik/system/EmulatedStackFrame$Range;

.field private final range2:Ldalvik/system/EmulatedStackFrame$Range;


# direct methods
.method public constructor <init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;II)V
    .registers 7
    .param p1, "type"    # Ljava/lang/invoke/MethodType;
    .param p2, "delegate"    # Ljava/lang/invoke/MethodHandle;
    .param p3, "startPos"    # I
    .param p4, "numDropped"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 112
    iput-object p2, p0, Ljava/lang/invoke/Transformers$DropArguments;->delegate:Ljava/lang/invoke/MethodHandle;

    .line 116
    const/4 v1, 0x0

    invoke-static {p1, v1, p3}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$DropArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    .line 117
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v0, v1

    .line 118
    .local v0, "numArgs":I
    add-int v1, p3, p4

    if-ge v1, v0, :cond_1e

    .line 119
    add-int v1, p3, p4

    invoke-static {p1, v1, v0}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$DropArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    .line 123
    :goto_1d
    return-void

    .line 121
    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/invoke/Transformers$DropArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    goto :goto_1d
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 7
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 127
    iget-object v3, p0, Ljava/lang/invoke/Transformers$DropArguments;->delegate:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-static {v3}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 129
    .local v0, "calleeFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v3, p0, Ljava/lang/invoke/Transformers$DropArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v0, v3, v4, v4}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 132
    iget-object v3, p0, Ljava/lang/invoke/Transformers$DropArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    if-eqz v3, :cond_21

    .line 133
    iget-object v3, p0, Ljava/lang/invoke/Transformers$DropArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v1, v3, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    .line 134
    .local v1, "referencesStart":I
    iget-object v3, p0, Ljava/lang/invoke/Transformers$DropArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v2, v3, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    .line 136
    .local v2, "stackFrameStart":I
    iget-object v3, p0, Ljava/lang/invoke/Transformers$DropArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v0, v3, v1, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 140
    .end local v1    # "referencesStart":I
    .end local v2    # "stackFrameStart":I
    :cond_21
    iget-object v3, p0, Ljava/lang/invoke/Transformers$DropArguments;->delegate:Ljava/lang/invoke/MethodHandle;

    #unknown opcode: 0xfa
    nop

    #unknown opcode: 0x7a
    nop

    move/16 p4452, p8297

    .line 141
    if-ne v1, v0, :cond_88

    .line 142
    return-void
    :cond_88
.end method
