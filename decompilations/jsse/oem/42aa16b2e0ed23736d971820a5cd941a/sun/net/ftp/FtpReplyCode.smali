.class public final enum Lsun/net/ftp/FtpReplyCode;
.super Ljava/lang/Enum;
.source "FtpReplyCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/net/ftp/FtpReplyCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist ACTION_ABORTED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist CANT_OPEN_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist CLOSING_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist COMMAND_OK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist COMMAND_UNRECOGNIZED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist CONNECTION_CLOSED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist DATA_CONNECTION_ALREADY_OPEN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist DATA_CONNECTION_OPEN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist DIRECTORY_STATUS:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist ENTERING_EXT_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist ENTERING_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist EXCEEDED_STORAGE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist FAILED_SECURITY_CHECK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist FILE_ACTION_NOT_TAKEN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist FILE_ACTION_OK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist FILE_ACTION_PENDING:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist FILE_NAME_NOT_ALLOWED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist FILE_STATUS_OK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist FILE_UNAVAILABLE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist HELP_MESSAGE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist INSUFFICIENT_STORAGE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist INVALID_PARAMETER:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NAME_SYSTEM_TYPE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NEED_ACCOUNT:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NEED_ACCOUNT_FOR_STORING:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NEED_ADAT:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NEED_MORE_ADAT:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NEED_PASSWORD:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NEED_SECURITY_RESOURCE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NOT_IMPLEMENTED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NOT_IMPLEMENTED_FOR_PARAMETER:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NOT_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist PAGE_TYPE_UNKNOWN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist PATHNAME_CREATED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist PROTECTED_REPLY:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist PROT_LEVEL_DENIED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist REQUEST_DENIED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist RESTART_MARKER:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist SECURELY_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist SECURITY_EXCHANGE_COMPLETE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist SECURITY_EXCHANGE_OK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist SERVICE_CLOSING:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist SERVICE_NOT_AVAILABLE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist SERVICE_READY:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist SERVICE_READY_IN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist SYSTEM_STATUS:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist UNKNOWN_ERROR:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist UNSUPPORTED_PROT_LEVEL:Lsun/net/ftp/FtpReplyCode;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 35
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "RESTART_MARKER"

    const/4 v2, 0x0

    const/16 v3, 0x6e

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->RESTART_MARKER:Lsun/net/ftp/FtpReplyCode;

    .line 36
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "SERVICE_READY_IN"

    const/4 v3, 0x1

    const/16 v4, 0x78

    invoke-direct {v0, v1, v3, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SERVICE_READY_IN:Lsun/net/ftp/FtpReplyCode;

    .line 37
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "DATA_CONNECTION_ALREADY_OPEN"

    const/4 v4, 0x2

    const/16 v5, 0x7d

    invoke-direct {v0, v1, v4, v5}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->DATA_CONNECTION_ALREADY_OPEN:Lsun/net/ftp/FtpReplyCode;

    .line 38
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "FILE_STATUS_OK"

    const/4 v5, 0x3

    const/16 v6, 0x96

    invoke-direct {v0, v1, v5, v6}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS_OK:Lsun/net/ftp/FtpReplyCode;

    .line 39
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "COMMAND_OK"

    const/4 v6, 0x4

    const/16 v7, 0xc8

    invoke-direct {v0, v1, v6, v7}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->COMMAND_OK:Lsun/net/ftp/FtpReplyCode;

    .line 40
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "NOT_IMPLEMENTED"

    const/4 v7, 0x5

    const/16 v8, 0xca

    invoke-direct {v0, v1, v7, v8}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NOT_IMPLEMENTED:Lsun/net/ftp/FtpReplyCode;

    .line 41
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "SYSTEM_STATUS"

    const/4 v8, 0x6

    const/16 v9, 0xd3

    invoke-direct {v0, v1, v8, v9}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SYSTEM_STATUS:Lsun/net/ftp/FtpReplyCode;

    .line 42
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "DIRECTORY_STATUS"

    const/4 v9, 0x7

    const/16 v10, 0xd4

    invoke-direct {v0, v1, v9, v10}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->DIRECTORY_STATUS:Lsun/net/ftp/FtpReplyCode;

    .line 43
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "FILE_STATUS"

    const/16 v10, 0x8

    const/16 v11, 0xd5

    invoke-direct {v0, v1, v10, v11}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    .line 44
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "HELP_MESSAGE"

    const/16 v11, 0x9

    const/16 v12, 0xd6

    invoke-direct {v0, v1, v11, v12}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->HELP_MESSAGE:Lsun/net/ftp/FtpReplyCode;

    .line 45
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "NAME_SYSTEM_TYPE"

    const/16 v12, 0xa

    const/16 v13, 0xd7

    invoke-direct {v0, v1, v12, v13}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NAME_SYSTEM_TYPE:Lsun/net/ftp/FtpReplyCode;

    .line 46
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "SERVICE_READY"

    const/16 v13, 0xb

    const/16 v14, 0xdc

    invoke-direct {v0, v1, v13, v14}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SERVICE_READY:Lsun/net/ftp/FtpReplyCode;

    .line 47
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "SERVICE_CLOSING"

    const/16 v14, 0xc

    const/16 v15, 0xdd

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SERVICE_CLOSING:Lsun/net/ftp/FtpReplyCode;

    .line 48
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "DATA_CONNECTION_OPEN"

    const/16 v15, 0xd

    const/16 v14, 0xe1

    invoke-direct {v0, v1, v15, v14}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->DATA_CONNECTION_OPEN:Lsun/net/ftp/FtpReplyCode;

    .line 49
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "CLOSING_DATA_CONNECTION"

    const/16 v14, 0xe

    const/16 v15, 0xe2

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->CLOSING_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    .line 50
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "ENTERING_PASSIVE_MODE"

    const/16 v15, 0xf

    const/16 v14, 0xe3

    invoke-direct {v0, v1, v15, v14}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->ENTERING_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

    .line 51
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "ENTERING_EXT_PASSIVE_MODE"

    const/16 v14, 0x10

    const/16 v15, 0xe5

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->ENTERING_EXT_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

    .line 52
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "LOGGED_IN"

    const/16 v15, 0x11

    const/16 v14, 0xe6

    invoke-direct {v0, v1, v15, v14}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    .line 53
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "SECURELY_LOGGED_IN"

    const/16 v14, 0x12

    const/16 v15, 0xe8

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SECURELY_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    .line 54
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "SECURITY_EXCHANGE_OK"

    const/16 v15, 0x13

    const/16 v14, 0xea

    invoke-direct {v0, v1, v15, v14}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SECURITY_EXCHANGE_OK:Lsun/net/ftp/FtpReplyCode;

    .line 55
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "SECURITY_EXCHANGE_COMPLETE"

    const/16 v14, 0x14

    const/16 v15, 0xeb

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SECURITY_EXCHANGE_COMPLETE:Lsun/net/ftp/FtpReplyCode;

    .line 56
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "FILE_ACTION_OK"

    const/16 v15, 0x15

    const/16 v14, 0xfa

    invoke-direct {v0, v1, v15, v14}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_OK:Lsun/net/ftp/FtpReplyCode;

    .line 57
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "PATHNAME_CREATED"

    const/16 v14, 0x16

    const/16 v15, 0x101

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->PATHNAME_CREATED:Lsun/net/ftp/FtpReplyCode;

    .line 58
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "NEED_PASSWORD"

    const/16 v14, 0x17

    const/16 v15, 0x14b

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_PASSWORD:Lsun/net/ftp/FtpReplyCode;

    .line 59
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "NEED_ACCOUNT"

    const/16 v14, 0x18

    const/16 v15, 0x14c

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT:Lsun/net/ftp/FtpReplyCode;

    .line 60
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "NEED_ADAT"

    const/16 v14, 0x19

    const/16 v15, 0x14e

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_ADAT:Lsun/net/ftp/FtpReplyCode;

    .line 61
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "NEED_MORE_ADAT"

    const/16 v14, 0x1a

    const/16 v15, 0x14f

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_MORE_ADAT:Lsun/net/ftp/FtpReplyCode;

    .line 62
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "FILE_ACTION_PENDING"

    const/16 v14, 0x1b

    const/16 v15, 0x15e

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_PENDING:Lsun/net/ftp/FtpReplyCode;

    .line 63
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    const/16 v14, 0x1c

    const/16 v15, 0x1a5

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SERVICE_NOT_AVAILABLE:Lsun/net/ftp/FtpReplyCode;

    .line 64
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "CANT_OPEN_DATA_CONNECTION"

    const/16 v14, 0x1d

    const/16 v15, 0x1a9

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->CANT_OPEN_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    .line 65
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "CONNECTION_CLOSED"

    const/16 v14, 0x1e

    const/16 v15, 0x1aa

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->CONNECTION_CLOSED:Lsun/net/ftp/FtpReplyCode;

    .line 66
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "NEED_SECURITY_RESOURCE"

    const/16 v14, 0x1f

    const/16 v15, 0x1af

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_SECURITY_RESOURCE:Lsun/net/ftp/FtpReplyCode;

    .line 67
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "FILE_ACTION_NOT_TAKEN"

    const/16 v14, 0x20

    const/16 v15, 0x1c2

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_NOT_TAKEN:Lsun/net/ftp/FtpReplyCode;

    .line 68
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "ACTION_ABORTED"

    const/16 v14, 0x21

    const/16 v15, 0x1c3

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->ACTION_ABORTED:Lsun/net/ftp/FtpReplyCode;

    .line 69
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "INSUFFICIENT_STORAGE"

    const/16 v14, 0x22

    const/16 v15, 0x1c4

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->INSUFFICIENT_STORAGE:Lsun/net/ftp/FtpReplyCode;

    .line 70
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "COMMAND_UNRECOGNIZED"

    const/16 v14, 0x23

    const/16 v15, 0x1f4

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->COMMAND_UNRECOGNIZED:Lsun/net/ftp/FtpReplyCode;

    .line 71
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "INVALID_PARAMETER"

    const/16 v14, 0x24

    const/16 v15, 0x1f5

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->INVALID_PARAMETER:Lsun/net/ftp/FtpReplyCode;

    .line 72
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "BAD_SEQUENCE"

    const/16 v14, 0x25

    const/16 v15, 0x1f7

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    .line 73
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "NOT_IMPLEMENTED_FOR_PARAMETER"

    const/16 v14, 0x26

    const/16 v15, 0x1f8

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NOT_IMPLEMENTED_FOR_PARAMETER:Lsun/net/ftp/FtpReplyCode;

    .line 74
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "NOT_LOGGED_IN"

    const/16 v14, 0x27

    const/16 v15, 0x212

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NOT_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    .line 75
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "NEED_ACCOUNT_FOR_STORING"

    const/16 v14, 0x28

    const/16 v15, 0x214

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT_FOR_STORING:Lsun/net/ftp/FtpReplyCode;

    .line 76
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "PROT_LEVEL_DENIED"

    const/16 v14, 0x29

    const/16 v15, 0x215

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->PROT_LEVEL_DENIED:Lsun/net/ftp/FtpReplyCode;

    .line 77
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "REQUEST_DENIED"

    const/16 v14, 0x2a

    const/16 v15, 0x216

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->REQUEST_DENIED:Lsun/net/ftp/FtpReplyCode;

    .line 78
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "FAILED_SECURITY_CHECK"

    const/16 v14, 0x2b

    const/16 v15, 0x217

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FAILED_SECURITY_CHECK:Lsun/net/ftp/FtpReplyCode;

    .line 79
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "UNSUPPORTED_PROT_LEVEL"

    const/16 v14, 0x2c

    const/16 v15, 0x218

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->UNSUPPORTED_PROT_LEVEL:Lsun/net/ftp/FtpReplyCode;

    .line 80
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY"

    const/16 v14, 0x2d

    const/16 v15, 0x219

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY:Lsun/net/ftp/FtpReplyCode;

    .line 81
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "FILE_UNAVAILABLE"

    const/16 v14, 0x2e

    const/16 v15, 0x226

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_UNAVAILABLE:Lsun/net/ftp/FtpReplyCode;

    .line 82
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "PAGE_TYPE_UNKNOWN"

    const/16 v14, 0x2f

    const/16 v15, 0x227

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->PAGE_TYPE_UNKNOWN:Lsun/net/ftp/FtpReplyCode;

    .line 83
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "EXCEEDED_STORAGE"

    const/16 v14, 0x30

    const/16 v15, 0x228

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->EXCEEDED_STORAGE:Lsun/net/ftp/FtpReplyCode;

    .line 84
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "FILE_NAME_NOT_ALLOWED"

    const/16 v14, 0x31

    const/16 v15, 0x229

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_NAME_NOT_ALLOWED:Lsun/net/ftp/FtpReplyCode;

    .line 85
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "PROTECTED_REPLY"

    const/16 v14, 0x32

    const/16 v15, 0x277

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->PROTECTED_REPLY:Lsun/net/ftp/FtpReplyCode;

    .line 86
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v14, 0x33

    const/16 v15, 0x3e7

    invoke-direct {v0, v1, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->UNKNOWN_ERROR:Lsun/net/ftp/FtpReplyCode;

    .line 33
    const/16 v1, 0x34

    new-array v1, v1, [Lsun/net/ftp/FtpReplyCode;

    sget-object v14, Lsun/net/ftp/FtpReplyCode;->RESTART_MARKER:Lsun/net/ftp/FtpReplyCode;

    aput-object v14, v1, v2

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->SERVICE_READY_IN:Lsun/net/ftp/FtpReplyCode;

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->DATA_CONNECTION_ALREADY_OPEN:Lsun/net/ftp/FtpReplyCode;

    aput-object v2, v1, v4

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS_OK:Lsun/net/ftp/FtpReplyCode;

    aput-object v2, v1, v5

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->COMMAND_OK:Lsun/net/ftp/FtpReplyCode;

    aput-object v2, v1, v6

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->NOT_IMPLEMENTED:Lsun/net/ftp/FtpReplyCode;

    aput-object v2, v1, v7

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->SYSTEM_STATUS:Lsun/net/ftp/FtpReplyCode;

    aput-object v2, v1, v8

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->DIRECTORY_STATUS:Lsun/net/ftp/FtpReplyCode;

    aput-object v2, v1, v9

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    aput-object v2, v1, v10

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->HELP_MESSAGE:Lsun/net/ftp/FtpReplyCode;

    aput-object v2, v1, v11

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->NAME_SYSTEM_TYPE:Lsun/net/ftp/FtpReplyCode;

    aput-object v2, v1, v12

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->SERVICE_READY:Lsun/net/ftp/FtpReplyCode;

    aput-object v2, v1, v13

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->SERVICE_CLOSING:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->DATA_CONNECTION_OPEN:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->CLOSING_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->ENTERING_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->ENTERING_EXT_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->SECURELY_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->SECURITY_EXCHANGE_OK:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->SECURITY_EXCHANGE_COMPLETE:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_OK:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->PATHNAME_CREATED:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->NEED_PASSWORD:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->NEED_ADAT:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->NEED_MORE_ADAT:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_PENDING:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->SERVICE_NOT_AVAILABLE:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->CANT_OPEN_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->CONNECTION_CLOSED:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->NEED_SECURITY_RESOURCE:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_NOT_TAKEN:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->ACTION_ABORTED:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->INSUFFICIENT_STORAGE:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->COMMAND_UNRECOGNIZED:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x23

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->INVALID_PARAMETER:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x24

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x25

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->NOT_IMPLEMENTED_FOR_PARAMETER:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x26

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->NOT_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x27

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT_FOR_STORING:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x28

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->PROT_LEVEL_DENIED:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x29

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->REQUEST_DENIED:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->FAILED_SECURITY_CHECK:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->UNSUPPORTED_PROT_LEVEL:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->FILE_UNAVAILABLE:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->PAGE_TYPE_UNKNOWN:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->EXCEEDED_STORAGE:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x30

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->FILE_NAME_NOT_ALLOWED:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x31

    aput-object v2, v1, v3

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->PROTECTED_REPLY:Lsun/net/ftp/FtpReplyCode;

    const/16 v3, 0x32

    aput-object v2, v1, v3

    const/16 v2, 0x33

    aput-object v0, v1, v2

    sput-object v1, Lsun/net/ftp/FtpReplyCode;->$VALUES:[Lsun/net/ftp/FtpReplyCode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput p3, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    .line 91
    return-void
.end method

.method public static blacklist find(I)Lsun/net/ftp/FtpReplyCode;
    .registers 6
    .param p0, "v"    # I

    .line 241
    invoke-static {}, Lsun/net/ftp/FtpReplyCode;->values()[Lsun/net/ftp/FtpReplyCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 242
    .local v3, "code":Lsun/net/ftp/FtpReplyCode;
    invoke-virtual {v3}, Lsun/net/ftp/FtpReplyCode;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_11

    .line 243
    return-object v3

    .line 241
    .end local v3    # "code":Lsun/net/ftp/FtpReplyCode;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 246
    :cond_14
    sget-object v0, Lsun/net/ftp/FtpReplyCode;->UNKNOWN_ERROR:Lsun/net/ftp/FtpReplyCode;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/net/ftp/FtpReplyCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lsun/net/ftp/FtpReplyCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/net/ftp/FtpReplyCode;

    return-object v0
.end method

.method public static blacklist values()[Lsun/net/ftp/FtpReplyCode;
    .registers 1

    .line 33
    sget-object v0, Lsun/net/ftp/FtpReplyCode;->$VALUES:[Lsun/net/ftp/FtpReplyCode;

    invoke-virtual {v0}, [Lsun/net/ftp/FtpReplyCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/net/ftp/FtpReplyCode;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .registers 2

    .line 99
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    return v0
.end method

.method public blacklist isAuthentication()Z
    .registers 3

    .line 209
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v0, 0xa

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, v0

    const/4 v0, 0x3

    if-ne v1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isConnection()Z
    .registers 3

    .line 198
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v0, 0xa

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isFileSystem()Z
    .registers 3

    .line 231
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v0, 0xa

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, v0

    const/4 v0, 0x5

    if-ne v1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isInformation()Z
    .registers 3

    .line 187
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v0, 0xa

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist isPermanentNegative()Z
    .registers 3

    .line 154
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_c

    const/16 v1, 0x258

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isPositiveCompletion()Z
    .registers 3

    .line 121
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_c

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isPositiveIntermediate()Z
    .registers 3

    .line 132
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_c

    const/16 v1, 0x190

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isPositivePreliminary()Z
    .registers 3

    .line 110
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_c

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isProtectedReply()Z
    .registers 3

    .line 165
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_c

    const/16 v1, 0x2bc

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isSyntax()Z
    .registers 3

    .line 176
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v0, 0xa

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, v0

    if-nez v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist isTransientNegative()Z
    .registers 3

    .line 143
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_c

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isUnspecified()Z
    .registers 3

    .line 220
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v0, 0xa

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, v0

    const/4 v0, 0x4

    if-ne v1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
