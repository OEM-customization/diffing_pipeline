.class public Ljava/lang/invoke/Transformers;
.super Ljava/lang/Object;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/Transformers$AlwaysThrow;,
        Ljava/lang/invoke/Transformers$BindTo;,
        Ljava/lang/invoke/Transformers$CatchException;,
        Ljava/lang/invoke/Transformers$CollectArguments;,
        Ljava/lang/invoke/Transformers$Collector;,
        Ljava/lang/invoke/Transformers$Constant;,
        Ljava/lang/invoke/Transformers$Construct;,
        Ljava/lang/invoke/Transformers$DropArguments;,
        Ljava/lang/invoke/Transformers$ExplicitCastArguments;,
        Ljava/lang/invoke/Transformers$FilterArguments;,
        Ljava/lang/invoke/Transformers$FilterReturnValue;,
        Ljava/lang/invoke/Transformers$FoldArguments;,
        Ljava/lang/invoke/Transformers$GuardWithTest;,
        Ljava/lang/invoke/Transformers$InsertArguments;,
        Ljava/lang/invoke/Transformers$Invoker;,
        Ljava/lang/invoke/Transformers$PermuteArguments;,
        Ljava/lang/invoke/Transformers$ReferenceArrayElementGetter;,
        Ljava/lang/invoke/Transformers$ReferenceArrayElementSetter;,
        Ljava/lang/invoke/Transformers$ReferenceIdentity;,
        Ljava/lang/invoke/Transformers$Spreader;,
        Ljava/lang/invoke/Transformers$Transformer;,
        Ljava/lang/invoke/Transformers$VarargsCollector;
    }
.end annotation


# static fields
.field private static final TRANSFORM_INTERNAL:Ljava/lang/reflect/Method;


# direct methods
.method static synthetic -get0()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Ljava/lang/invoke/Transformers;->TRANSFORM_INTERNAL:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 43
    :try_start_0
    const-class v1, Ljava/lang/invoke/MethodHandle;

    const-string/jumbo v2, "transformInternal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 44
    const-class v4, Ldalvik/system/EmulatedStackFrame;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 43
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ljava/lang/invoke/Transformers;->TRANSFORM_INTERNAL:Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_13} :catch_14

    .line 38
    return-void

    .line 45
    :catch_14
    move-exception v0

    .line 46
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
