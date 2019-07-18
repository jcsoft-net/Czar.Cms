using Czar.Cms.Core.CodeGenerator;
using Czar.Cms.Core.Models;
using Microsoft.Extensions.DependencyInjection;
using Xunit;

namespace Czar.Cms.Test
{
    /// <summary>
    /// 测试代码生成器
    /// </summary>
    public class GeneratorTest
    {
        [Fact]
        public void GeneratorModelForSqlServer()
        {
            var serviceProvider = Common.BuildServiceForSqlServer();
            var codeGenerator = serviceProvider.GetRequiredService<CodeGenerator>();
            codeGenerator.GenerateTemplateCodesFromDatabase(true);

            Assert.Equal("SQLServer", DatabaseType.SqlServer.ToString(), ignoreCase: true);
        }
    }
}
