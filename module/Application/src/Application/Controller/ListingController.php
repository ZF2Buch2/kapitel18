<?php
/**
 * ZF2 Buch Kapitel 18
 * 
 * Das Buch "Zend Framework 2 - Von den Grundlagen bis zur fertigen Anwendung"
 * von Ralf Eggert ist im Addison-Wesley Verlag erschienen. 
 * ISBN 978-3-8273-2994-3
 * 
 * @package    Application
 * @author     Ralf Eggert <r.eggert@travello.de>
 * @copyright  Alle Listings sind urheberrechtlich geschützt!
 * @link       http://www.zendframeworkbuch.de/ und http://www.awl.de/2994
 */

/**
 * namespace definition and usage
 */
namespace Application\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

/**
 * Listing controller
 * 
 * Shows and executes the listings
 * 
 * @package    Application
 */
class ListingController extends AbstractActionController
{
    /**
     * Redirects to homepage
     */
    public function indexAction()
    {
        return new ViewModel();
    }
    
    /**
     * Show listing 18.01
     */
    public function listing1801Action()
    {
        return new ViewModel();
    }
    
    /**
     * Show listing 18.02
     */
    public function listing1802Action()
    {
        return new ViewModel();
    }
    
    /**
     * Show listing 18.03
     */
    public function listing1803Action()
    {
        return new ViewModel();
    }
    
    /**
     * Show listing 18.04
     */
    public function listing1804Action()
    {
        return new ViewModel();
    }
    
    /**
     * Show listing 18.05
     */
    public function listing1805Action()
    {
        return new ViewModel();
    }
    
    /**
     * Show listing 18.06
     */
    public function listing1806Action()
    {
        return new ViewModel();
    }
    
    /**
     * Show listing 18.07
     */
    public function listing1807Action()
    {
        return new ViewModel();
    }
    
    /**
     * Show listing 18.08
     */
    public function listing1808Action()
    {
        return new ViewModel();
    }
    
    /**
     * Show listing 18.09
     */
    public function listing1809Action()
    {
        return new ViewModel();
    }
    
    /**
     * Show listing 18.10
     */
    public function listing1810Action()
    {
        return new ViewModel();
    }
    
    /**
     * Show listing 18.11
     */
    public function listing1811Action()
    {
        return new ViewModel();
    }
}
