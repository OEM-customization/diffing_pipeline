.class Ljava/lang/Throwable$SentinelHolder;
.super Ljava/lang/Object;
.source "Throwable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SentinelHolder"
.end annotation


# static fields
.field public static final greylist-max-o STACK_TRACE_ELEMENT_SENTINEL:Ljava/lang/StackTraceElement;

.field public static final greylist-max-o STACK_TRACE_SENTINEL:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 147
    new-instance v0, Ljava/lang/StackTraceElement;

    const-string v1, ""

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-direct {v0, v1, v1, v2, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_ELEMENT_SENTINEL:Ljava/lang/StackTraceElement;

    .line 154
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_SENTINEL:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
