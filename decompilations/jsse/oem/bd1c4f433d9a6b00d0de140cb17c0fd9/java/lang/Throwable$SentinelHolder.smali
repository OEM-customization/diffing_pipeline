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
.field public static final STACK_TRACE_ELEMENT_SENTINEL:Ljava/lang/StackTraceElement;

.field public static final STACK_TRACE_SENTINEL:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StackTraceElement;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    sput-object v0, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_ELEMENT_SENTINEL:Ljava/lang/StackTraceElement;

    .line 155
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sget-object v1, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_ELEMENT_SENTINEL:Ljava/lang/StackTraceElement;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 154
    sput-object v0, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_SENTINEL:[Ljava/lang/StackTraceElement;

    .line 139
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
