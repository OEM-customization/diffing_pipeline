.class public final enum Ljava/lang/annotation/ElementType;
.super Ljava/lang/Enum;
.source "ElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/lang/annotation/ElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/lang/annotation/ElementType;

.field public static final enum whitelist core-platform-api test-api ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist core-platform-api test-api CONSTRUCTOR:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist core-platform-api test-api FIELD:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist core-platform-api test-api LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist core-platform-api test-api METHOD:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist core-platform-api test-api PACKAGE:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist core-platform-api test-api PARAMETER:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist core-platform-api test-api TYPE:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist core-platform-api test-api TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist core-platform-api test-api TYPE_USE:Ljava/lang/annotation/ElementType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 75
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    .line 78
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "FIELD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    .line 81
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "METHOD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    .line 84
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "PARAMETER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    .line 87
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "CONSTRUCTOR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    .line 90
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "LOCAL_VARIABLE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

    .line 93
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "ANNOTATION_TYPE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    .line 96
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "PACKAGE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    .line 103
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "TYPE_PARAMETER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

    .line 110
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "TYPE_USE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;

    .line 73
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/annotation/ElementType;

    sget-object v12, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    aput-object v12, v1, v2

    sget-object v2, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

    aput-object v2, v1, v7

    sget-object v2, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    aput-object v2, v1, v9

    sget-object v2, Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Ljava/lang/annotation/ElementType;->$VALUES:[Ljava/lang/annotation/ElementType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/lang/annotation/ElementType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 73
    const-class v0, Ljava/lang/annotation/ElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/ElementType;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/lang/annotation/ElementType;
    .registers 1

    .line 73
    sget-object v0, Ljava/lang/annotation/ElementType;->$VALUES:[Ljava/lang/annotation/ElementType;

    invoke-virtual {v0}, [Ljava/lang/annotation/ElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/ElementType;

    return-object v0
.end method
