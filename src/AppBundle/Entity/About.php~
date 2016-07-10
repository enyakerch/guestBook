<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;


/**
 * Entity
 *
 * @ORM\Table(name="about")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\AboutRepository")
 */
Class About
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;
    /**
     * @var string
     *
     * @ORM\Column(name="country", type="string", length=100, nullable=true)
     */
    protected $country;

    /**
     * @var string
     *
     * @ORM\Column(name="region", type="string", length=100, nullable=true)
     */
    protected $region;

    /**
     * @var string
     *
     * @ORM\Column(name="ip", type="string", length=39, nullable=true)
     */
    protected $ip;

    /**
     * @var string
     *
     * @ORM\Column(name="browser", type="string", length=255, nullable=true)
     */
    protected $browser;

    /**
     * User ip.
     * @ORM\OneToMany(targetEntity="User", mappedBy="about")
     **/
    protected $users;

    public function __construct()
    {
        $this->users = new ArrayCollection();
    }

    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set country
     *
     * @param string $country
     * @return About
     */
    public function setCountry($country)
    {
        $this->country = $country;
        return $this;
    }

    /**
     * Get country
     *
     * @return string
     */
    public function getCountry()
    {
        return $this->country;
    }

    /**
     * Set region
     *
     * @param string $region
     * @return About
     */
    public function setRegion($region)
    {
        $this->region = $region;
        return $this;
    }

    /**
     * Get region
     *
     * @return string
     */
    public function getRegion()
    {
        return $this->region;
    }

    /**
     * Set ip
     *
     * @param string $ip
     * @return About
     */
    public function setIp($ip)
    {
        $this->ip = $ip;
        return $this;
    }

    /**
     * Get ip
     *
     * @return string
     */
    public function getIp()
    {
        return $this->ip;
    }

    /**
     * Set browser
     *
     * @param string $browser
     * @return About
     */
    public function setBrowser($browser)
    {
        $this->browser = $browser;
        return $this;
    }

    /**
     * Get browser
     *
     * @return string
     */
    public function getBrowser()
    {
        return $this->browser;
    }

    /**
     * Add users
     *
     * @param \AppBundle\Entity\User $users
     * @return About
     */
    public function addUser(\AppBundle\Entity\User $users)
    {
        $this->users[] = $users;

        return $this;
    }

    /**
     * Remove users
     *
     * @param \AppBundle\Entity\User $users
     */
    public function removeUser(\AppBundle\Entity\User $users)
    {
        $this->users->removeElement($users);
    }

    /**
     * Get users
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getUsers()
    {
        return $this->users;
    }
}
