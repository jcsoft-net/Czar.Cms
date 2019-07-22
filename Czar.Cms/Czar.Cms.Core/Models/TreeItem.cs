using System.Collections.Generic;

namespace Czar.Cms.Core.Models
{
    /// <summary>
    /// 属性节点
    /// </summary>
    public class TreeItem<T>
    {
        public T Item { get; set; }
        public IEnumerable<TreeItem<T>> Children { get; set; }
    }
}
